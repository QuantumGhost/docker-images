BASE_IMAGE := golang:1.12-alpine
IMAGE_REGISTRY :=
IMAGE_ORG := quantumghost
IMAGE_NAME := go
IMAGE_FULL_NAME_WO_TAG := $(IMAGE_REGISTRY)$(IMAGE_ORG)/$(IMAGE_NAME)
RELEASE_TAG := latest
BUILD_TAG := v1.12

.PHONY: build publish update-base

build:
	docker build -t $(IMAGE_FULL_NAME_WO_TAG):$(RELEASE_TAG) .
	docker tag $(IMAGE_FULL_NAME_WO_TAG):$(RELEASE_TAG) $(IMAGE_FULL_NAME_WO_TAG):$(BUILD_TAG)

publish: build
	docker push $(IMAGE_FULL_NAME_WO_TAG):$(RELEASE_TAG)
	docker push $(IMAGE_FULL_NAME_WO_TAG):$(BUILD_TAG)

update-base:
	docker pull $(BASE_IMAGE)
