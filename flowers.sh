folder_name=102flowers
mkdir $folder_name 
cd $folder_name
# Images
wget https://www.robots.ox.ac.uk/%7Evgg/data/flowers/102/102flowers.tgz
tar -xvzf 102flowers.tgz
# Segmentations
wget https://www.robots.ox.ac.uk/%7Evgg/data/flowers/102/102segmentations.tgz
tar -xvzf 102segmentations.tgz
# Chi distances
wget https://www.robots.ox.ac.uk/%7Evgg/data/flowers/102/distancematrices102.mat
# Image labels
wget https://www.robots.ox.ac.uk/%7Evgg/data/flowers/102/imagelabels.mat
# Data splits
wget https://www.robots.ox.ac.uk/%7Evgg/data/flowers/102/setid.mat
cd ..
