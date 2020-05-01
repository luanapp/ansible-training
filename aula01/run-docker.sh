#!/bin/bash

docker run --rm -it \
  -v $PWD:/app \
  -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
  -v $PWD/etc/hosts:/etc/hosts \
  -v ~/.ssh/id_rsa.pub:/root/.ssh/id_rsa.pub \
  -v ~/Documents/training/Training.pem:/root/training.pem \
  --entrypoint "" \
  luanapp/ansible:latest \
  /bin/bash
