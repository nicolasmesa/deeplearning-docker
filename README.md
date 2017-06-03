# Python Deep Learning

## Acknowledgement
This repository is based off https://raw.githubusercontent.com/fchollet/keras/master/docker/ .

## Install
I followed these tutorials to get started with Cuda, cudnn and nvidia-docker.
* https://yangcha.github.io/GTX-1080/
* http://guanghan.info/blog/en/my-works/building-our-personal-deep-learning-rig-gtx-1080-ubuntu-16-04-cuda-8-0rc-cudnn-7-tensorflowmxnetcaffedarknet/

## Configuration
### Makefile
The Makefile assumes that the data will be in `{$HOME}/deeplearning/data` and will map this to /data inside the Docker container. It also assumes that the Jupyter notebooks (or the source code) is located in `{$HOME}/deeplearning/notebooks`. This can all be changed when calling make.

## Running
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
