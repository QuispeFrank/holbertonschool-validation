#!/bin/bash

# 1
apt-get update && apt-get install -y hugo make

# 2
make build
