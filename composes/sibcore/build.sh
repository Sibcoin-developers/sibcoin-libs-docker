#!/bin/sh

# Create docker image
printf "\n\e[92m * Create image 'composes/sibcoin': \x1b[0m\n"

docker build --rm -t 'sibcore:2' .
