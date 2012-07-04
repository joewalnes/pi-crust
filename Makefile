# Makefile to automate conversion of Eagle schematic to Gerbers/Excellon files
# -joe@walnes.com

# Requires Eagle and Gerbv to be installed. Assumes they are in path. If not, change
# these variables.
EAGLE=eagle
GERBV=gerbv

PROJECT=pi-crust

# Function params: board_file, target_extension, export_type, layers, description
define eagle_cam_job
	#### Exporting from $1: $5
	$(EAGLE) -X -d $3 -o ./export/gerbers/$(PROJECT).$(strip $2) $1 $4
endef

# Exports Eagle .brd to zip of Gerber files, suitable for production.
export/$(PROJECT)-gerbers.zip: pi-crust.brd
	mkdir -p export/gerbers
	$(call eagle_cam_job, $^, txt, EXCELLON     , 44 45      , Drills and holes   )
	$(call eagle_cam_job, $^, gml, GERBER_RS274X, 20 46      , Slots              )
	$(call eagle_cam_job, $^, gbp, GERBER_RS274X, 20 32      , Solder paste bottom)
	$(call eagle_cam_job, $^, gtp, GERBER_RS274X, 20 31      , Solder paste top   )
	$(call eagle_cam_job, $^, gbs, GERBER_RS274X, 20 30      , Solder mask bottom )
	$(call eagle_cam_job, $^, gts, GERBER_RS274X, 20 29      , Solder mask top    )
	$(call eagle_cam_job, $^, gbo, GERBER_RS274X, 20 22 26   , Silk bottom        )
	$(call eagle_cam_job, $^, gto, GERBER_RS274X, 20 21 25   , Silk top           )
	$(call eagle_cam_job, $^, gbl, GERBER_RS274X, 16 17 18 20, Bottom copper      )
	$(call eagle_cam_job, $^, gtl, GERBER_RS274X, 1 17 18 20 , Top copper         )
	rm -f $@
	cd export/gerbers && zip ../../$@ *

# Runs 'gerbv' to view the exported Gerbers.
view-gerbers: export/$(PROJECT)-gerbers.zip
	$(GERBV) $(wildcard export/gerbers/*)
.PHONY: view-gerbers

clean:
	rm -rf export $(wildcard *.pro) $(wildcard *.s#?) $(wildcard *.b#?)
.PHONY: clean

