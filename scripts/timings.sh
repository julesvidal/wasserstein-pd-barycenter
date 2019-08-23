#!/bin/bash

echo -e "\nTimings : results of tables 1 and 2\n\n" 

#############################################
 echo -e "\n\n______ data-set : GAUSSIANS ______"

 fileList=""
 for I in {00..99}; do
   fileList="$fileList -i ./data/diagrams/gaussians/diagram_"$I".vtu"
 done

 echo -e "\nAuction approach" 
 ttkPersistenceDiagramsBarycenterCmd $fileList -o output_gaussian_barycenter_auction -d -2 -T 100000000 -t 1 -M 2 

 echo -e "\nOur approach -- 1 thread" 
 ttkPersistenceDiagramsBarycenterCmd $fileList -o output_gaussian_barycenter_ours_1thr -d -2 -T 100000000 -t 1 -M 0 

 echo -e "\nOur approach -- 8 threads" 
 ttkPersistenceDiagramsBarycenterCmd $fileList -o output_gaussian_barycenter_ours_8thr -d -2 -T 100000000 -t 8 -M 0 
 rm output_*

#############################################
echo -e "\n\n______ data-set : VORTEXSTREET ______" 

fileList=""
for I in {00..44}; do
  fileList="$fileList -i ./data/diagrams/vortexStreet/diagram_"$I".vtu"
done

echo -e "\nAuction approach" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_vortexStreet_barycenter_auction -d -2 -T 100000000 -t 1 -M 2 

echo -e "\nOur approach -- 1 thread" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_vortexStreet_barycenter_ours_1thr -d -2 -T 100000000 -t 1 -M 0 

echo -e "\nOur approach -- 8 threads" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_vortexStreet_barycenter_ours_8thr -d -2 -T 100000000 -t 8 -M 0 
rm output_*

##############################################
echo -e "\n\n______ data-set : STARTINGVORTEX ______" 

fileList=""
for I in {00..11}; do
  fileList="$fileList -i ./data/diagrams/startingVortex/diagram_"$I".vtu"
done

echo -e "\nAuction approach" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_startingVortex_barycenter_auction -d -2 -T 100000000 -t 1 -M 2 

echo -e "\nOur approach -- 1 thread" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_startingVortex_barycenter_ours_1thr -d -2 -T 100000000 -t 1 -M 0 

echo -e "\nOur approach -- 8 threads" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_startingVortex_barycenter_ours_8thr -d -2 -T 100000000 -t 8 -M 0 
rm output_*

##############################################
echo -e "\n\n______ data-set : ISABEL ______" 

fileList=""
for I in {00..11}; do
  fileList="$fileList -i ./data/diagrams/isabel/diagram_"$I".vtu"
done

echo -e "\nAuction approach" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_isabel_barycenter_auction -d -2 -T 100000000 -t 1 -M 2 

echo -e "\nOur approach -- 1 thread" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_isabel_barycenter_ours_1thr -d -2 -T 100000000 -t 1 -M 0 

echo -e "\nOur approach -- 8 threads" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_isabel_barycenter_ours_8thr -d -2 -T 100000000 -t 8 -M 0 
rm output_*

##############################################
echo -e "\n\n______ data-set : SEASURFACEHEIGHT ______" 

fileList=""
for I in {00..47}; do
  fileList="$fileList -i ./data/diagrams/seaSurfaceHeight/diagram_"$I".vtu"
done

echo -e "\nAuction approach" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_seaSurfaceHeight_barycenter_auction -d -2 -T 100000000 -t 1 -M 2 

echo -e "\nOur approach -- 1 thread" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_seaSurfaceHeight_barycenter_ours_1thr -d -2 -T 100000000 -t 1 -M 0 

echo -e "\nOur approach -- 8 threads" 
ttkPersistenceDiagramsBarycenterCmd $fileList -o output_seaSurfaceHeight_barycenter_ours_8thr -d -2 -T 100000000 -t 8 -M 0 

rm output_*