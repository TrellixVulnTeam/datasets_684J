import argparse
import re
import os


def generate_all(text, destination_folder):
    arr = re.findall(r"[a-zA-Z0-9\-_ ]+\.sh", text, re.MULTILINE)
    for filename in arr:
        block = generate_one(text, filename, destination_folder)
        print(block)


def generate_one(text, filename, destination_folder):
    # find block
    s = text.find(f"# {filename.strip()}")
    if s == -1:
        raise ValueError(f"Script {filename} not found.")

    e = text.find("```", s)
    block = text[s:e]

    # write to file
    filename = re.sub(r"[^\w]", "", block.split("\n")[0].split(".")[0])
    with open(os.path.join(destination_folder, f"{filename}.sh"), "w+") as f:
        f.write(block)
    f.close()

    return block


def main(filename: str, destination_folder: str):
    # open readme file
    with open("README.md", "r") as f:
        text = f.read()
    f.close()

    # find the block script
    if filename == "all":
        generate_all(text, destination_folder)
    else:
        generate_one(text, filename, destination_folder)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Parse README file to download scripts."
    )
    parser.add_argument("-f", "--filename", type=str, default="all")
    parser.add_argument("-d", "--destination-folder", type=str, default="scripts")

    args = parser.parse_args()
    filename = args.filename
    destination_folder = args.destination_folder

    main(filename, destination_folder)
