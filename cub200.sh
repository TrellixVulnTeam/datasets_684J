# cub200.sh
folder_name=CUB200
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_nam
# Images
wget http://www.vision.caltech.edu/visipedia-data/CUB-200/images.tgz
tar -xvzf images.tgz
# Splits
wget http://www.vision.caltech.edu/visipedia-data/CUB-200/lists.tgz
tar -xvzf lists.tgz
# Annotations
wget http://www.vision.caltech.edu/visipedia-data/CUB-200/annotations.tgz
tar -xvzf annotations.tgz
# Attributes
wget http://www.vision.caltech.edu/visipedia-data/CUB-200/attributes-yaml.tgz
tar -xvzf attributes-yaml.tgz
cd ..
