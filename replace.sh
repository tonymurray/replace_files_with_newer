#!/bin/bash
# Version 2 - copies files to another folder if they are not present in the target folder
for filename in ./*.jpg; do
  base_name=$(basename ${filename})

  name=$(find ../files -name "$base_name" )
        if test -z "$name" 
        then
              echo "Image  $name not found"
        else
              echo "Replacing image $name"
              cp -i "$base_name" $name
        fi

  if find  ../files -name "$base_name" | grep . ; then echo Found; else cp -i "$base_name" ../files/2024/02/; fi

done

