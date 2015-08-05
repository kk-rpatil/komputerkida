#!/bin/bash

OS_VERSION="centos[ ]*6.6"

LoadImage()
{
   echo "Centos Image Not Found in Docker"
   echo "Loading CentOS in Docker"
   status=$(docker load -i $(pwd)/backup/centos-6.6.tar)
   
   if [ -z "$status" ]; then
      echo "ERROR : cannot load centos:6.6 image"
      exit 1
   fi

   echo "CentOS image Loaded in Docker"
}

echo "Finding centos image"
status=$(docker images centos | grep -o "$OS_VERSION")
if [ -z "$status" ]; then
   LoadImage
fi

BUILD=$(grep BUILD VERSION | sed 's/BUILD=//')
VERSION=$(grep VERSION VERSION | sed 's/VERSION=//')
CURRENT_BUILD="$BUILD:$VERSION"

echo "Building KomputerKida Image"
cd docker && \
   docker build -t $CURRENT_BUILD . && \
   cd -
echo "Building Image Completed"
