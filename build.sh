#!/bin/bash

ALPINE_VERSION="3.14"
WKHTMLTOX_VERSION="0.12.5"

docker pull noverant/alpine-wkhtmltopdf-builder:$WKHTMLTOX_VERSION-alpine$ALPINE_VERSION || true
docker buildx build --platform linux/amd64,linux/arm64 \
--build-arg ALPINE_VERSION \
--build-arg WKHTMLTOX_VERSION \
--cache-from noverant/alpine-wkhtmltopdf-builder:$WKHTMLTOX_VERSION-alpine$ALPINE_VERSION \
--push \
-t noverant/alpine-wkhtmltopdf-builder:latest \
-t noverant/alpine-wkhtmltopdf-builder:$WKHTMLTOX_VERSION-alpine$ALPINE_VERSION \
-t noverant/alpine-wkhtmltopdf-builder:$WKHTMLTOX_VERSION-alpine$ALPINE_VERSION-"$GITHUB_RUN_ID"