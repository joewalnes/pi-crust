#!/usr/bin/env python

# Automates Eagle CAM jobs. -joewalnes

import os
import subprocess
import sys

job_spec = [
  # (filename, eagle CAM device driver, layers, description)
  ('Top_Layer.ger'           , 'GERBER_RS274X', [1 , 17, 18, 20], 'Top copper'),
  ('Bottom_Layer.ger'        , 'GERBER_RS274X', [16, 17, 18, 20], 'Bottom copper'),
  ('Top_Solder_Mask.ger'     , 'GERBER_RS274X', [20, 29]        , 'Solder mask top'),
  ('Bottom_Solder_Mask.ger'  , 'GERBER_RS274X', [20, 30]        , 'Solder mask bottom'),
  ('Top_Silk_Screen.ger'     , 'GERBER_RS274X', [20, 21, 25]    , 'Silk top'),
  ('Bottom_Silk_Screen.ger'  , 'GERBER_RS274X', [20, 22, 26]    , 'Silk bottom'),
#  ('Top_Solder_Paste.ger'    , 'GERBER_RS274X', [20, 31]        , 'Solder paste top'),
#  ('Bottom_Solder_Paster.ger', 'GERBER_RS274X', [20, 32]        , 'Solder paste bottom'),
  ('Outline.ger'             , 'GERBER_RS274X', [20, 46]        , 'Outline'),
  ('Drills.xln'              , 'EXCELLON'     , [44, 45]        , 'Drills and holes'),
]


def cam_job(board_file, output_dir, job_spec, eagle_exe):
  for output_file, cam_type, layers, description in job_spec:
    print '=== Exporting %s (%s) ===' % (os.path.join(output_dir, output_file), description)
    cmd = ' '.join([
        eagle_exe,
        '-X', # execute CAM processor
        '-d%s' % cam_type, # cam device driver
        '-o%s' % os.path.join(output_dir, output_file),
        board_file,
        '"%s"' % ' '.join([str(layer) for layer in layers])
    ])
    print cmd
    subprocess.call(cmd, shell=True)


if __name__ == '__main__':
  if len(sys.argv) < 3:
    print >> sys.stderr, 'Usage: %s INPUT.brd OUTPUT_DIR' % sys.argv[0]
    sys.exit(1)
  eagle_exe  = 'eagle'
  board_file = sys.argv[1]
  output_dir = sys.argv[2]
  if not os.path.exists(output_dir):
    os.makedirs(output_dir)
  cam_job(board_file, output_dir, job_spec, eagle_exe)

