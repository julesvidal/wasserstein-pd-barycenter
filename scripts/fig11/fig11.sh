#!/bin/bash

export LD_LIBRARY_PATH="`pwd`/../../install/lib/ttk/"

echo -e "\n\nResults of figure 11\n\n" 

fileList=""
for I in {00..11}; do
   fileList="$fileList -i ../../data/diagrams/seaSurfaceHeight/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_barycenter_cluster0 -d 0 -T 100000000 -t 1 -M 0 

fileList=""
for I in {12..23}; do
   fileList="$fileList -i ../../data/diagrams/seaSurfaceHeight/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_barycenter_cluster1 -d 0 -T 100000000 -t 1 -M 0 

fileList=""
for I in {24..35}; do
   fileList="$fileList -i ../../data/diagrams/seaSurfaceHeight/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_barycenter_cluster2 -d 0 -T 100000000 -t 1 -M 0 

fileList=""
for I in {36..47}; do
   fileList="$fileList -i ../../data/diagrams/seaSurfaceHeight/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_barycenter_cluster3 -d 0 -T 100000000 -t 1 -M 0 

fileList=""
for I in {00..47}; do
   fileList="$fileList -i ../../data/diagrams/seaSurfaceHeight/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsClusteringCmd $fileList -o vtu_outputs/output_clustering -d 0 -T 10 -K 4 -A 1 -I 1 -G 1.0
