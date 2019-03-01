#!/bin/bash

rm -rf node_modules
if [ -z `which npm` ] ; then
  brew install nvm
  nvm install 9.11.1
fi
