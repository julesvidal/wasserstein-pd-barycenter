
#!/bin/bash
echo -e "\n\nResults of figure 10"

##############################################
echo -e "\n\n______ data-set : STARTINGVORTEX ______" 

fileList=""
for I in {00..05}; do
  fileList="$fileList -i ../../data/diagrams/startingVortex/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_barycenter_cluster0 -d -3 -T 10 -t 1 -M 0

fileList=""
for I in {06..11}; do
  fileList="$fileList -i ../../data/diagrams/startingVortex/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsBarycenterCmd $fileList -o vtu_outputs/output_barycenter_cluster1 -d -3 -T 10 -t 1 -M 0

fileList=""
for I in {0..11}; do
  fileList="$fileList -i ../../data/diagrams/startingVortex/diagram_"$I".vtu"
done
../../install/bin/ttkPersistenceDiagramsClusteringCmd $fileList -o vtu_outputs/output_clustering -d 0 -T 100 -K 2 -A 1 -I 1 -t 1 -R 0 -G 1.0
