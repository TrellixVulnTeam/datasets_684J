import bdlb
import re

fs = bdlb.load(benchmark="fishyscapes", data_dir="./datasets")
data = fs.get_dataset("LostAndFound")
IDS_FROM_FILENAME = re.compile(r"([0-9]+)_(.+)_labels.png")


def _get_ids_from_labels_file(labels_file):
    """Returns the ids (fishyscapes and cityscapes format) from the filename of a labels
    file. Used to associate a fishyscapes label file with the corresponding cityscapes
    image.

    Example:
      '0000_04_Maurener_Weg_8_000000_000030_labels.png' -> '0000', '04_Maurener_Weg_8_000000_000030'
    """
    match = IDS_FROM_FILENAME.match(labels_file)
    return match.group(1), match.group(2)


def npy_loader(path):
    sample = torch.from_numpy(np.load(path))
    return sample


dataset = datasets.DatasetFolder(root="PATH", loader=npy_loader, extensions=".npz")
