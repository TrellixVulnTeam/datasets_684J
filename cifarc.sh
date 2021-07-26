# cifar-c.sh
datasets_root="datasets/"
cd $datasets_root
wget https://zenodo.org/record/2535967/files/CIFAR-10-C.tar?download=1
tar -xvzf CIFAR-10-C.tar 
wget https://zenodo.org/record/3555552/files/CIFAR-100-C.tar?download=1
tar -xvzf CIFAR-100-C.tar
cd ..
