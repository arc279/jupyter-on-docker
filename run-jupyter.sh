#!/bin/sh

jupyter-notebook \
    --ip='*' \
    --notebook-dir=/root/notebooks \
    --port=8888 \
    --no-browser \
    --allow-root \
    --NotebookApp.token='xxx'

