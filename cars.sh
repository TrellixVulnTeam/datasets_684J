# cars.sh
folder_name=cars
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_name
# Training images
wget http://ai.stanford.edu/~jkrause/car196/cars_train.tgz
tar -xvzf cars_train.tgz
# Testing images
wget http://ai.stanford.edu/~jkrause/car196/cars_test.tgz
tar -xvzf cars_test.tgz
# Annotations
wget http://ai.stanford.edu/~jkrause/cars/car_devkit.tgz
tar -xvzf car_devkit.tgz
