import torch
import tensorflow as tf
import numpy as np

print(tf.__version__)
print(torch.__version__)
# or pip3 install tfrecord
class LiTS(torch.utils.data.Dataset):
    def __init__(self, filenames):
        self.filenames = filenames

    def __len__(self):
        return len(self.filenames)

    def __getitem__(self, idx):
        volume, segmentation = None, None
        if idx >= len(self):
            raise IndexError()
        ds = tf.data.TFRecordDataset(filenames[idx : idx + 1])
        for x, y in ds.map(read_tfrecord):
            volume = torch.from_numpy(x.numpy())
            segmentation = torch.from_numpy(y.numpy())

        return volume, segmentation
