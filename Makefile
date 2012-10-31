# Build Gerbers from Eagle file
# -joewalnes

default: pi-crust-gerbers.zip
.PHONY: default

# This make rule will convert any foo.brd file into foo-gerbers.zip.
# Assumes python and eagle (6) are in the path.
%-gerbers.zip: %.brd
	rm -rf $@ $^.gerbers
	python create-gerbers.py $^ $^.gerbers
	zip $@ $^.gerbers/*.ger $^.gerbers/*.xln

clean:
	rm -rf *.zip *.gerbers
.PHONY: clean
