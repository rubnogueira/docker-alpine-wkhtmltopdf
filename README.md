# Alpine Wkhtmltopdf Docker Container

[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](https://opensource.org/licenses/MIT)
<a href="https://github.com/noverant/docker-alpine-wkhtmltopdf/actions/workflows/main.yml"><img src="https://img.shields.io/github/workflow/status/noverant/docker-alpine-wkhtmltopdf/CI" alt="Build Status" /></a>
[![](https://images.microbadger.com/badges/image/noverant/docker-alpine-wkhtmltopdf.svg)](https://microbadger.com/images/noverant/docker-alpine-wkhtmltopdf "Get your own image badge on microbadger.com")

## Usage

wkhtmltopdf with qt patches

yes, Alpine does have a wkhtmltopdf package... but it doesn't include the qt patches ... enjoy!

This image also has ARM64 support.


```
# i'm lazy
docker run noverant/docker-alpine-wkhtmltopdf google.com - > test.pdf

# or mount a local file (e.g. test.html)
docker run --rm -v $(pwd):/data noverant/docker-alpine-wkhtmltopdf /data/test.html - > test.pdf
```

## Q&A
*Is it really the smallest html to pdf docker image on the planet?*

Yes.



