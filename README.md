# Python Deep Learning

## Acknowledgement
This repository is based off https://github.com/fchollet/keras/tree/master/docker

## Install
I followed these tutorials to get started with Cuda, cudnn and nvidia-docker.
* https://yangcha.github.io/GTX-1080/
* http://guanghan.info/blog/en/my-works/building-our-personal-deep-learning-rig-gtx-1080-ubuntu-16-04-cuda-8-0rc-cudnn-7-tensorflowmxnetcaffedarknet/

## Docker Image
The docker image can be found here: https://hub.docker.com/r/nicolasmesa/deeplearning-python . It can also be built from the docker file running `make build BUILD=build`

## Configuration
### Makefile
The Makefile assumes that the data will be in `{$HOME}/deeplearning/data` and will map this to /data inside the Docker container. It also assumes that the Jupyter notebooks (or the source code) is located in `{$HOME}/deeplearning/notebooks`. This can all be changed when calling make.

## Running
These commands will pull the latest image from dockerhub by default (https://hub.docker.com/r/nicolasmesa/deeplearning-python). If you want it to build the docker file and use the built image instead, append `BUILD=build` to any of these commands (also, for now I recommend setting TAG=local to avoid name collision when you pull).
### Jupyter notebook
`make notebook [DATA=<path-to-data-directory>] [SRC=<path-to-src-directory>]`
### iPython
`make ipython [DATA=<path-to-data-directory>] [SRC=<path-to-src-directory>]`
### bash
`make bash [DATA=<path-to-data-directory>] [SRC=<path-to-src-directory>]`
### Executing a bash session in a running container
```
# Get the container name
$ docker container ls
$ docker container exec -it <container-name> bash
```
