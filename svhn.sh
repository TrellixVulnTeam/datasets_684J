# svhn.sh
folder_name="SVHN"
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_name
# Cropped
wget http://ufldl.stanford.edu/housenumbers/train_32x32.mat
wget http://ufldl.stanford.edu/housenumbers/test_32x32.mat
wget http://ufldl.stanford.edu/housenumbers/extra_32x32.mat

# Full
wget http://ufldl.stanford.edu/housenumbers/train.tar.gz
tar -xvzf train.tar.gz
wget http://ufldl.stanford.edu/housenumbers/test.tar.gz
tar -xvzf test.tar.gz
wget http://ufldl.stanford.edu/housenumbers/extra.tar.gz
tar -xvzf extra.tar.gz
cd ..
