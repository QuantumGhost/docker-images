IMAGE_REGISTRY :=
IMAGE_ORG := quantumghost
IMAGE_NAME := distroless
IMAGE_FULL_NAME_WO_TAG := $(IMAGE_REGISTRY)$(IMAGE_ORG)/$(IMAGE_NAME)
RELEASE_TAG := latest

BUILD_TIME := $(shell date -u "+%Y-%m-%dT%H-%M-%S")
BUILD_TAG := v$(BUILD_TIME)

.PHONY: build publish update-base

build: update-base
	docker build -t $(IMAGE_FULL_NAME_WO_TAG):$(RELEASE_TAG) .
	docker tag $(IMAGE_FULL_NAME_WO_TAG):$(RELEASE_TAG) $(IMAGE_FULL_NAME_WO_TAG):$(BUILD_TAG)

publish: build
	docker push $(IMAGE_FULL_NAME_WO_TAG):$(RELEASE_TAG)
	docker push $(IMAGE_FULL_NAME_WO_TAG):$(BUILD_TAG)

update-base:
	docker pull gcr.io/distroless/base:debug
