# chars74k.sh
folder_name=Chars74K
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_name
# Data
wget http://www.ee.surrey.ac.uk/CVSSP/demos/chars74k/EnglishImg.tgz
tar -xvzf EnglishImg.tgz
wget http://www.ee.surrey.ac.uk/CVSSP/demos/chars74k/EnglishHnd.tgz
tar -xvzf EnglishHnd.tgz
wget http://www.ee.surrey.ac.uk/CVSSP/demos/chars74k/EnglishFnt.tgz
tar -xvzf EnglishFnt.tgz
# Splits
wget http://www.ee.surrey.ac.uk/CVSSP/demos/chars74k/Lists.tgz
tar -xvzf Lists.tgz
cd ..
