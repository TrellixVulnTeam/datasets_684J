# Some Datasets download scripts

> Last update: 09/07/2021.

Install datasets to the folder `datasets/`

## Preparation

```shell
mkdir datasets
python -m venv env --system-site-packages
pip install -r requirements.txt
```

## Usage

//TODO

## Template

Website:

Paper:

Script:

```shell
# filename.sh [GENERATE SCRIPT TAG]
folder_name=
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_name

cd ..
```

Citation:

```text
```

---

## Flowers

102 Category Flower Dataset.

> We have created a 102 category dataset, consisting of 102 flower categories. The flowers chosen to be flower commonly occuring in the United Kingdom. Each class consists of between 40 and 258 images.

Website: https://www.robots.ox.ac.uk/%7Evgg/data/flowers/102/

Paper:

Script:

```shell
# flowers.sh (OBLIGATORY)
folder_name="102flowers"
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_namee
# Images
wget https://www.robots.ox.ac.uk/%7Evgg/data/flowers/102/102flowers.tgz
tar -xvzf 102flowers.tgz
# Segmentations
wget https://www.robots.ox.ac.uk/%7Evgg/data/flowers/102/102segmentations.tgz
tar -xvzf 102segmentations.tgz
# Chi distances
# wget https://www.robots.ox.ac.uk/%7Evgg/data/flowers/102/distancematrices102.mat
# Image labels
wget https://www.robots.ox.ac.uk/%7Evgg/data/flowers/102/imagelabels.mat
# Data splits
wget https://www.robots.ox.ac.uk/%7Evgg/data/flowers/102/setid.mat
cd ..
```

Citation:

```text
```

## Scenes

### MIT Indoor scenes

Indoor Scene Recognition.

> Indoor scene recognition is a challenging open problem in high level vision. Most scene recognition models that work well for outdoor scenes perform poorly in the indoor domain. The main difficulty is that while some indoor scenes (e.g. corridors) can be well characterized by global spatial properties, others (e.g., bookstores) are better characterized by the objects they contain. More generally, to address the indoor scenes recognition problem we need a model that can exploit local and global discriminative information.

> The database contains 67 Indoor categories, and a total of 15620 images. The number of images varies across categories, but there are at least 100 images per category. All images are in jpg format.

Website: http://web.mit.edu/torralba/www/indoor.html

Paper: https://people.csail.mit.edu/torralba/publications/indoor.pdf

Script:

```shell
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
```

Citation:
```text
```

## Birds

Caltech-UCSD Birds 200

Website: http://www.vision.caltech.edu/visipedia/CUB-200.html

Script:

```shell
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
```

Citation:

```text
@techreport{WelinderEtal2010,
	Author = {P. Welinder and S. Branson and T. Mita and C. Wah and F. Schroff and S. Belongie and P. Perona},
	Institution = {California Institute of Technology},
	Number = {CNS-TR-2010-001},
	Title = {{Caltech-UCSD Birds 200}},
	Year = {2010}
}
```

## Cars

Cars Dataset

> The Cars dataset contains 16,185 images of 196 classes of cars. The data is split into 8,144 training images and 8,041 testing images, where each class has been split roughly in a 50-50 split. Classes are typically at the level of Make, Model, Year, e.g. 2012 Tesla Model S or 2012 BMW M3 coupe. 

Website: http://ai.stanford.edu/~jkrause/cars/car_dataset.html

Paper: http://vision.stanford.edu/pdf/3drr13.pdf

Script:

```shell
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
cd ..
```

Citation

```text
@inproceedings{KrauseStarkDengFei-Fei_3DRR2013,
  title = {3D Object Representations for Fine-Grained Categorization},
  booktitle = {4th International IEEE Workshop on  3D Representation and Recognition (3dRR-13)},
  year = {2013},
  address = {Sydney, Australia},
  author = {Jonathan Krause and Michael Stark and Jia Deng and Li Fei-Fei}
}
```

## Aircraft

Fine-Grained Visual Classification of Aircraft (FGVC-Aircraft)

> The dataset contains 10,200 images of aircraft, with 100 images for each of 102 different aircraft model variants, most of which are airplanes. The (main) aircraft in each image is annotated with a tight bounding box and a hierarchical airplane model label.

Website: https://www.robots.ox.ac.uk/~vgg/data/fgvc-aircraft/

Paper: https://arxiv.org/pdf/1306.5151.pdf 

Script:

```shell
# aircraft.sh
folder_name=aircraft
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_name
wget https://www.robots.ox.ac.uk/~vgg/data/fgvc-aircraft/archives/fgvc-aircraft-2013b.tar.gz
tar -xvzf fgvc-aircraft-2013b.tar.gz
cd ..
```

Citation

```text
@techreport{maji13fine-grained,
   title         = {Fine-Grained Visual Classification of Aircraft},
   author        = {S. Maji and J. Kannala and E. Rahtu
                    and M. Blaschko and A. Vedaldi},
   year          = {2013},
   archivePrefix = {arXiv},
   eprint        = {1306.5151},
   primaryClass  = "cs-cv",
}
```

## VOC20212

Visual Object Classes Challenge 2012 (VOC2012)

> Classification/Detection: The 2012 dataset is the same as that used in 2011. No additional data has been annotated. For this reason, participants are not allowed to run evaluation on the VOC2011 dataset, and this option on the evaluation server has been disabled.
 
> Segmentation: The 2012 dataset contains images from 2008-2011 for which additional segmentations have been prepared. As in previous years the assignment to training/test sets has been maintained. The total number of images with segmentation has been increased from 7,062 to 9,993.

> Action Classification: The 2012 dataset comprises the 2011 dataset plus additional annotated images. The assignment to training/test sets has been maintained. In addition to the box annotation, people are now also annotated with a reference point on the body to support the "boxless" action classification task (see the development kit).

> Person Layout Taster: The 2012 dataset is the same as that used in 2011. No additional data has been annotated. For this reason, participants are not allowed to run evaluation on the VOC2011 dataset, and this option on the evaluation server has been disabled.


Website: http://host.robots.ox.ac.uk:8080/pascal/VOC/voc2012/index.html

Paper: https://link.springer.com/content/pdf/10.1007/s11263-009-0275-4.pdf

Script:

```shell
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
```

Citation:

```text
@misc{pascal-voc-2012,
	author = "Everingham, M. and Van~Gool, L. and Williams, C. K. I. and Winn, J. and Zisserman, A.",
	title = "The {PASCAL} {V}isual {O}bject {C}lasses {C}hallenge 2012 {(VOC2012)} {R}esults",
	howpublished = "http://www.pascal-network.org/challenges/VOC/voc2012/workshop/index.html"
}	
```

## COCO

Website:

Paper:

Script:

```shell
# coco.sh
folder_name="coco/"
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name
cd $folder_name

wget http://images.cocodataset.org/zips/val2017.zip
wget http://images.cocodataset.org/zips/test2017.zip
wget http://images.cocodataset.org/annotations/annotations_trainval2017.zip
# wget http://images.cocodataset.org/annotations/stuff_annotations_trainval2017.zip
wget http://images.cocodataset.org/annotations/image_info_test2017.zip
unzip val2017.zip
unzip test2017.zip
unzip annotations_trainval2017.zip
unzip image_info_test2017.zip
rm val2017.zip
rm test2017.zip

cd ..
```

Citation:

```text
```

## Letters

Chars74K dataset

Website: http://www.ee.surrey.ac.uk/CVSSP/demos/chars74k/

Paper: http://www.audentia-gestion.fr/MICROSOFT/pubs-deCampos09.pdf

Script:

```shell
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
```

Citation:

```text
```

## SVHN

```shell
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
```

## TinyImageNet

Website:

Paper:

Script:

```shell
# tinyimagenet.sh
folder_name=
mkdir $folder_name 
cd $folder_name

cd ..
```

Citation:

```text
```

## Icons-50

https://berkeley.box.com/s/jcem6ik7rxr6594lg99kmrdo01ue6yjt
or
https://drive.google.com/drive/folders/16_kaFo3uUoS-U8FTDm4nUh6Vo21UVnJX?usp=sharing


## Describable Textures Dataset (DTD) (Texture)

Website: https://www.robots.ox.ac.uk/~vgg/data/dtd/

```shell
# textures.sh
folder_name=Textures
mkdir $folder_name 
cd $folder_name
https://www.robots.ox.ac.uk/~vgg/data/dtd/download/dtd-r1.0.1.tar.gz
https://www.robots.ox.ac.uk/~vgg/data/dtd/download/dtd-r1.0.1-labels.tar.gz
tar -xvzf dtd-r1.0.1.tar.gz
tar -xvzf dtd-r1.0.1-labels.tar.gz
cd ..
```


Citation: 

```text
@InProceedings{cimpoi14describing,
  Author    = {M. Cimpoi and S. Maji and I. Kokkinos and S. Mohamed and and A. Vedaldi},
  Title     = {Describing Textures in the Wild},
  Booktitle = {Proceedings of the {IEEE} Conf. on Computer Vision and Pattern Recognition ({CVPR})},
  Year      = {2014}
}
```

## Places 365

Website: http://places2.csail.mit.edu/download.html

High resolution: 

Small Images:

val: http://data.csail.mit.edu/places/places365/val_256.tar
test: http://data.csail.mit.edu/places/places365/test_256.tar

```shell
# places365.sh
folder_name=Places365
mkdir $folder_name 
cd $folder_name
wget http://data.csail.mit.edu/places/places365/val_256.tar
tar -xvf val_256.tar
cd ..
```

## Genomics

Website: https://ai.googleblog.com/2019/12/improving-out-of-distribution-detection.html

The real bacteria dataset with 10 in-distribtution classes, 60 validation out-of-distribution (OOD) classes, and 60 test OOD classes can be downloaded at https://drive.google.com/corp/drive/folders/1Ht9xmzyYPbDouUTl_KQdLTJQYX2CuclR

## CIFAR-10-C, CIFAR-100-C

Website: https://github.com/hendrycks/robustness

Paper: https://arxiv.org/abs/1903.12261

Script:

```shell
# cifar-c.sh
datasets_root="datasets/"
cd $datasets_root
wget https://zenodo.org/record/2535967/files/CIFAR-10-C.tar?download=1
tar -xvzf CIFAR-10-C.tar 
wget https://zenodo.org/record/3555552/files/CIFAR-100-C.tar?download=1
tar -xvzf CIFAR-100-C.tar
cd ..
```

Citation:

```text
@article{hendrycks2019robustness,
  title={Benchmarking Neural Network Robustness to Common Corruptions and Perturbations},
  author={Dan Hendrycks and Thomas Dietterich},
  journal={Proceedings of the International Conference on Learning Representations},
  year={2019}
}
```

## Fishyscapes

Fishyscapes is a benchmark for anomaly detection in semantic segmentation.

Website: https://fishyscapes.com/

https://github.com/hermannsblum/bdl-benchmark/tree/master/bdlb/fishyscapes

https://github.com/OATML/bdl-benchmarks

Paper: https://arxiv.org/abs/1903.12261

### Lost & Found

Script:

```shell
'lostandfound_mask': 'http://robotics.ethz.ch/~asl-datasets/Fishyscapes/fishyscapes_lostandfound.zip',
'cityscapes_overlays_v3': 'http://robotics.ethz.ch/~asl-datasets/Fishyscapes/fs_val_v3.zip',
```

```shell
# All links
http://www.dhbw-stuttgart.de/~sgehrig/lostAndFoundDataset/disparity.zip 1461824611 1e06350d082f3bd686ff889940ad60ed85bfb1e8aa691a547a259c52fa3b60b1
http://www.dhbw-stuttgart.de/~sgehrig/lostAndFoundDataset/gtCoarse.zip 37756896 53b6d3ab000f08b1fb59d70c1398eecc4d82a7baf4e9cf74fbf60d1858abe9ac
http://www.dhbw-stuttgart.de/~sgehrig/lostAndFoundDataset/leftImg16bit.zip 18039875634 f3530514163f30ccafc05210b643ea690c4ba17cdb4497d8a7d4f9c324c71da8
http://www.dhbw-stuttgart.de/~sgehrig/lostAndFoundDataset/leftImg8bit.zip 5802953400 307f66002023ab597d309963b94990f5b9a8e5735ee729c3292647a66e9f2b18
http://www.dhbw-stuttgart.de/~sgehrig/lostAndFoundDataset/rightImg16bit.zip 17938768019 db492fc9b9e0adf7a662cd589a6c8ea5cd8cf68d08600b2099d0cd7e0c58f6dd
http://www.dhbw-stuttgart.de/~sgehrig/lostAndFoundDataset/rightImg8bit.zip 5787134165 d5219f49e730a1ce064a9d118227e71cd39681bcc7f8a87ab4061c86cd7dc6fb
```

```shell
# fslostandfound.sh
folder_name="lostandfound/"
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_name
# images
wget http://www.dhbw-stuttgart.de/~sgehrig/lostAndFoundDataset/leftImg8bit.zip
# masks
wget http://robotics.ethz.ch/~asl-datasets/Fishyscapes/fishyscapes_lostandfound
cd ..
```

### Static

```shell
# fsstatic.sh
datasets_root="datasets/"
cd $datasets_root
# masks and images (npz)
wget http://robotics.ethz.ch/~asl-datasets/Fishyscapes/fs_val_v3.zip
cd ..
```

Citation:

```text
@inproceedings{pinggera2016lost,
  title={Lost and found: detecting small road hazards for self-driving vehicles},
  author={Pinggera, Peter and Ramos, Sebastian and Gehrig, Stefan and Franke, Uwe and Rother, Carsten and Mester, Rudolf},
  booktitle={2016 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)},
  year={2016}
}
@article{blum2019fishyscapes,
  title={The Fishyscapes Benchmark: Measuring Blind Spots in Semantic Segmentation},
  author={Blum, Hermann and Sarlin, Paul-Edouard and Nieto, Juan and Siegwart, Roland and Cadena, Cesar},
  journal={arXiv preprint arXiv:1904.03215},
  year={2019}
}
```


## Cityscapes

Website: https://www.cityscapes-dataset.com/

https://www.cityscapes-dataset.com/downloads/

Paper:

Script:

```shell
# cityscapes.sh
folder_name="cityscapes"
datasets_root="datasets/"
cd $datasets_root
mkdir $folder_name 
cd $folder_name
# Left 8-bit images
wget https://www.cityscapes-dataset.com/file-handling/?packageID=3
cd ..
```

Citation:

```text
```
