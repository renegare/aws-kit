GIT_VERSION=$(shell git rev-parse --short HEAD)

build:
	docker build -t renegare/aws-kit:$(GIT_VERSION) .
	docker build -t renegare/aws-kit:latest .

push:
	docker push renegare/aws-kit:$(GIT_VERSION)
	docker push renegare/aws-kit:latest
