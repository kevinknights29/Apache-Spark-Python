#!/bin/bash

# Install system packages
apt update \
    && apt install --no-install-recommends -y \
        curl \
        git \
        build-essential \
        python3-dev \
        gcc
