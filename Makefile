.PHONY: test check clean build dist all

INFO_IMAGE_TAG := 1.0
INFO_IMAGE_NAME ?= nginx-fail2ban
INFO_CONTAINER_NAME ?= nginx-fail2ban

INFO_PATH_MAINLINE ?= ./mainline
INFO_PATH_ALPINE_ALIYUN ?= $(INFO_PATH_MAINLINE)/alpine-aliyun

stopAlpineAliyun:
	?docker stop $(INFO_CONTAINER_NAME)

removeAlpineAliyun: stopAlpineAliyun
	docker rm $(INFO_CONTAINER_NAME) && docker rmi $(INFO_IMAGE_NAME):$(INFO_IMAGE_TAG)

testAlpineAliyun:
	cd $(INFO_PATH_ALPINE_ALIYUN) && docker build -t $(INFO_IMAGE_NAME):$(INFO_IMAGE_TAG) ./ && docker run -it --name $(INFO_CONTAINER_NAME) -d $(INFO_IMAGE_NAME):$(INFO_IMAGE_TAG)