#!/usr/bin/env sh
# This script converts the cifar data into leveldb format.

EXAMPLE=./
DATA=data/
DBTYPE=lmdb

echo "Creating $DBTYPE..."

rm -rf $EXAMPLE/cifar10_train_$DBTYPE $EXAMPLE/cifar10_test_$DBTYPE
/opt/DL/caffe/bin/convert_cifar_data.bin $DATA $EXAMPLE $DBTYPE

echo "Computing image mean..."

/opt/DL/caffe/bin/compute_image_mean.bin -backend=$DBTYPE \
  $EXAMPLE/cifar10_train_$DBTYPE $EXAMPLE/mean.binaryproto

echo "Done."
