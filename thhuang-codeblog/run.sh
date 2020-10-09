#!/usr/bin/env bash
docker build -t codeblog .
docker run --rm --name codeblog -p 16384:80 codeblog
