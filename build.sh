#!/bin/bash

ALPINE_VERSION="3.10"
WKHTMLTOX_VERSION="0.12.6"

docker buildx build --platform linux/amd64,linux/arm64 . \
	--build-arg ALPINE_VERSION \
	--build-arg WKHTMLTOX_VERSION \
	--push \
	-t noverant/alpine-wkhtmltopdf-builder:latest \
	-t noverant/alpine-wkhtmltopdf-builder:$WKHTMLTOX_VERSION-alpine$ALPINE_VERSION \
	-t noverant/alpine-wkhtmltopdf-builder:$WKHTMLTOX_VERSION-alpine$ALPINE_VERSION-"$GITHUB_RUN_ID"