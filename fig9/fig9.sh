#!/bin/bash

echo -e "\n\nResults of figure 9\n\n" 

##############################################
echo -e "\n\n______ data-set : VORTEXSTREET ______" 

echo -e "\n Barycenter computation for cluster 0"
fileList=""
for I in {00..08}; do
  fileList="$fileList -i ../data/diagrams/vortexStreet/diagram_"$I".vtu"
done
ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_barycenter_cluster0 -d 0 -T 100000000 -t 1 -M 0 

echo -e "\n Barycenter computation for cluster 1"
fileList=""
for I in {09..17}; do
  fileList="$fileList -i ../data/diagrams/vortexStreet/diagram_"$I".vtu"
done
ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_barycenter_cluster1 -d 0 -T 100000000 -t 1 -M 0 

echo -e "\n Barycenter computation for cluster 2"
fileList=""
for I in {18..26}; do
  fileList="$fileList -i ../data/diagrams/vortexStreet/diagram_"$I".vtu"
done
ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_barycenter_cluster2 -d 0 -T 100000000 -t 1 -M 0 

echo -e "\n Barycenter computation for cluster 3"
fileList=""
for I in {27..35}; do
  fileList="$fileList -i ../data/diagrams/vortexStreet/diagram_"$I".vtu"
done
ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_barycenter_cluster3 -d 0 -T 100000000 -t 1 -M 0 

echo -e "\n Barycenter computation for cluster 4"
fileList=""
for I in {36..44}; do
  fileList="$fileList -i ../data/diagrams/vortexStreet/diagram_"$I".vtu"
done
ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_barycenter_cluster4 -d 0 -T 100000000 -t 1 -M 0 

echo -e "\n Clustering computation"
fileList=""
for I in {00..44}; do
  fileList="$fileList -i ../data/diagrams/vortexStreet/diagram_"$I".vtu"
done
ttkPersistenceDiagramsClusteringCmd $fileList -o vtu_outputs/output_clustering -d 0 -T 10 -K 5 -I 1 -A 1 -G 1.0 -P -1 -R 0



