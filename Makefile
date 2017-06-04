help:
	@cat Makefile

DATA?="${HOME}/deeplearning/data"
GPU?=0
DOCKER_FILE=Dockerfile
DOCKER=GPU=$(GPU) nvidia-docker
BACKEND=tensorflow
SRC="${HOME}/deeplearning/notebooks"

BUILD?=pull # pull to get the image from dockerhub / build to build the DOCKER_FILE
IMAGE=nicolasmesa/deeplearning-python
TAG?=latest #TODO make this dynamic :latest if BUILD=pull / :local if BUILD=build to avoid name collisions
IMG_NAME=${IMAGE}:${TAG}

pull:
	docker $(BUILD) $(IMG_NAME)

build:
	docker $(BUILD) -t $(IMG_NAME) -f $(DOCKER_FILE) .

bash: $(BUILD)
	$(DOCKER) run -it -v $(SRC):/src -v $(DATA):/data --env KERAS_BACKEND=$(BACKEND) $(IMG_NAME) bash

ipython: $(BUILD)
	$(DOCKER) run -it -v $(SRC):/src -v $(DATA):/data --env KERAS_BACKEND=$(BACKEND) $(IMG_NAME) ipython

notebook: $(BUILD)
	$(DOCKER) run -it -v $(SRC):/src -v $(DATA):/data --net=host --env KERAS_BACKEND=$(BACKEND) $(IMG_NAME)

