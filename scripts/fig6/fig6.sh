#!/bin/bash

echo -e "\n\nResults of figure6 : orange plot\n\n" 

echo -e "\n\n______ data-set : SEASURFACEHEIGHT ______" 

fileList=""
for I in {00..47}; do
  fileList="$fileList -i ../../data/diagrams/seaSurfaceHeight/diagram_"$I".vtu"
done
echo -e "\nOur approach -- 1 thread" 
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o output -d -3 -T 99999999 -t 1 -M 0 -plot 1
rm output_port#0.vtu
rm output_port#1.vtu
rm output_port#2.vtu
