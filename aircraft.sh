# aircraft.sh
folder_name=aircraft
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_name
wget https://www.robots.ox.ac.uk/~vgg/data/fgvc-aircraft/archives/fgvc-aircraft-2013b.tar.gz
tar -xvzf fgvc-aircraft-2013b.tar.gz
cd ..
