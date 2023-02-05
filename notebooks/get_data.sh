#!/bin/bash

urls=("https://docs.google.com/uc?export=download&id=14doSRn8hT14QYtjZz28GKv14JgdIsbFF" "https://docs.google.com/uc?export=download&id=15rCwQUxxpH6angDhpXzlvbe1nGetYHrf")

for url in "${urls[@]}"; do
  filename="$(basename $url)"
  
  # Download the tar file
  wget $url -O ../data.tar.gz

  # Unzip the tar file
  tar -xvzf ../data.tar.gz -C ../data

  # Clean up by removing the tar file
  rm ../data.tar.gz
done