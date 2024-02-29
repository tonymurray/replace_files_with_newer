#!/bin/bash

for filename in ./*.jpg; do
  base_name=$(basename ${filename})

  name=$(find ../files/ -name "$base_name" )
        echo "$filename"
        echo "found in..."
        echo "$name"
        cp -i "$base_name" $name


done
