#!/bin/bash

echo -e "\n\nResults of figure 8 \n\n" 

##############################################
echo -e "\n\n______ data-set : GAUSSIANS ______"

fileList=""
for I in {00..24}; do
  fileList="$fileList -i ../data/diagrams/gaussians/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_gaussian_barycenter_cluster0 -d -3 -T 10 -t 1 -M 0 

fileList=""
for I in {25..74}; do
  fileList="$fileList -i ../data/diagrams/gaussians/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_gaussian_barycenter_cluster1 -d -3 -T 10 -t 1 -M 0 

fileList=""
for I in {75..99}; do
  fileList="$fileList -i ../data/diagrams/gaussians/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_gaussian_barycenter_cluster2 -d -3 -T 10 -t 1 -M 0

fileList=""
for I in {00..99}; do
  fileList="$fileList -i ../data/diagrams/gaussians/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsClusteringCmd $fileList -o vtu_outputs/output_clustering -d 0 -T 10 -G 0.2 -K 3 -P 2 -A 1 -I 1 -t 1

