# Docker file for running VisemeNet inference.

It looks VisemeNet https://github.com/yzhou359/VisemeNet_tensorflow only runs in CUDA 8.0 environment, so I made a Docker file to run VisemeNet in CUDA 8.0 environment.

## Requirements

* Host: nvidia driver installed + CUDA 8 or 9(10 may work?) 
* nvidia-docker2 https://github.com/NVIDIA/nvidia-docker

We've confirmed Ubutu 16.06 + CUDA 9.2 works well for the host.

## Build docker image

Run `build.sh`

## Download VisemeNet

Clone VisemeNet somewhere and also download & store checkpoint files as described in VisemeNet's README.

```
$ https://github.com/yzhou359/VisemeNet_tensorflow.git
# Download checkpoint files and put it to VisemeNet_tensorflow/data/ckpt/pretrain_biwi/
```

## Run VisemeNet in contaienr environment.

Setup audio.

Run docker in CUDA 8.0 environment. Bind host's VisemeNet directory to docker container.

Edit VisemeNet path `run.sh`, then 

```
$ ./run.sh

# cd /VisemeNet_tensorflow
# python3 main_test.py
```

`mayaparam_viseme.txt` will be generated in host's volume.


## License

MIT license. 
