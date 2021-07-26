# indoor.sh
folder_name="indoorCVPR_09"
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_name
# Images
wget http://groups.csail.mit.edu/vision/LabelMe/NewImages/indoorCVPR_09.tar
tar -xvzf indoorCVPR_09.tar
# Images filenames
wget http://web.mit.edu/torralba/www/TrainImages.txt
wget http://web.mit.edu/torralba/www/TestImages.txt
# Annotations
wget http://groups.csail.mit.edu/vision/LabelMe/NewImages/indoorCVPR_09annotations.tar
tar -xvzf indoorCVPR_09annotations.tar
cd ..
