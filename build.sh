#!/bin/bash

ALPINE_VERSION="3.16"
WKHTMLTOX_VERSION="0.12.6"

docker buildx create --use --platform "linux/arm64,linux/amd64"
docker buildx build --platform linux/amd64,linux/arm64 . \
	--build-arg ALPINE_VERSION \
	--build-arg WKHTMLTOX_VERSION \
	--push \
	-t rubnogueira/alpine-wkhtmltopdf-builder:latest \
	-t rubnogueira/alpine-wkhtmltopdf-builder:$WKHTMLTOX_VERSION-alpine$ALPINE_VERSION