#!/bin/bash

export LD_LIBRARY_PATH="`pwd`/../../install/lib/ttk/"

echo -e "\n\nResults of figure 1 : clustering\n\n" 

fileList=""
for I in {00..11}; do
  fileList="$fileList -i ../../data/diagrams/isabel/diagram_"$I".vtu"
done

../../install/bin/ttkPersistenceDiagramsClusteringCmd $fileList -o vtu_outputs/output_clustering -d 0 -T 100 -G 0.8 -K 3 -P 2 -A 1 -I 1 -t 1
