#!/usr/bin/env sh

TOOLS=/opt/DL/caffe/bin

$TOOLS/caffe.bin train \
  --solver=cifar10_quick_solver.prototxt

# reduce learning rate by factor of 10 after 8 epochs
$TOOLS/caffe.bin train \
  --solver=cifar10_quick_solver_lr1.prototxt \
  --snapshot=cifar10_quick_iter_4000.solverstate
