# This script uses a YAML file to cut a FLAC file at "start" end "end" time,
# turn it into WAV files, downsample them to 16 kHz and name them with "label".
# Outputs a bunch of FLAC files and the same amount of WAV files.
# You probably only want to keep the WAV files.

# ravehe and ioonaa, July 2016


#!/usr/bin/env_python
# encoding: UTF-8

import os, yaml

yamlf = yaml.safe_load(open("merged.yaml"))
if len(sys.argv) != 3:
    print("Error: exactly two parameters are expected!\n")
    print("Usage: python yaml_cut_wav_1616.py <yaml-file> <flac-file>\n")

for stim in yamlf["stimuli"]:
    os.system("sox group2_mic1.flac " +
              stim["label"] +
              ".flac trim " +
              str(stim["start"]) +
              " =" + str(stim["end"]))
    os.system("sox " + stim["label"] + ".flac" + " -t wav -r 16000 -b 16 " + stim["label"] + ".wav")
