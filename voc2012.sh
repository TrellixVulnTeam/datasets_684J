# voc2012.sh
folder_name=VOC2012
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_name
wget https://www.robots.ox.ac.uk/~vgg/data/fgvc-aircraft/archives/fgvc-aircraft-2013b.tar.gz
tar -xvzf fgvc-aircraft-2013b.tar.gz
cd ..

# Images
wget http://host.robots.ox.ac.uk:8080/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar
tar -xvzf VOCtrainval_11-May-2012.tar
cd ..
