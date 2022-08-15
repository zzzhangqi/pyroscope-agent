#!/bin/bash

VERSION=${VERSION:-0.10.1}
if [ -d "/agent" ]; then
  echo "directory \"/agent\" exists"
else
  echo "directory \"/agent\" does not exist"
  mkdir /agent
fi

if [ -f "/agent/pyroscope.jar" ]; then
  echo "File \"/agent/pyroscope.jar\" exists"
  exit 0
else
  echo "Downloading Pyroscope Java Agent..."
  wget -P /agent https://ghproxy.com/https://github.com/pyroscope-io/pyroscope-java/releases/download/v"$VERSION"/pyroscope.jar
  echo "Downloaded Pyroscope Java Agent"
fi
