## Usage of this demo

### Setup the caffe environment
    source /opt/DL/caffe/bin/caffe-activate

### Download the cifar10 dataset
    cd data && ./get_cifar10.sh

### Convert the datset to train/test lmdb format.
    ./create_cifar10.sh

### Train a network
    ./train_quick.sh

### Package the generated model
    zip cifar10.zip cifar10_quick.prototxt cifar10_quick_iter_5000.caffemodel
