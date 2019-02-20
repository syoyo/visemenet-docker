#!/bin/bash

# Set your VisemeNet path to `-v` parameter.

nvidia-docker run -it --name visemenet-infer -v /home/syoyo/work/VisemeNet_tensorflow:/VisemeNet_tensorflow visemenet  /bin/bash
