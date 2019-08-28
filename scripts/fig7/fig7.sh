#!/bin/bash

echo -e "\n\nResults of figure 7\n\n" 


fileList=""
for I in {36..47}; do
  fileList="$fileList -i ../../data/diagrams/seaSurfaceHeight/diagram_"$I".vtu"
done

../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_0.1s -d 0 -T 0.1 -t 1 -M 0 
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_1s -d 0 -T 1 -t 1 -M 0 
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_10s -d 0 -T 10 -t 1 -M 0 
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_convergence -d 0 -T 100000000 -t 1 -M 0 
