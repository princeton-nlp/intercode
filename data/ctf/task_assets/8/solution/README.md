# 8 Solution
Download the `exiftool` installation package from the url in the `exiftool_download_url.txt` file, then unzip it for the `exiftool` executable.

Inspect the image metadata using `exiftool cat.jpg`, available in the `Image-ExifTool-12.64` folder.

It will be the apparent that the `LICENSE` string is base64 encoded, which can be decoded with: `echo cGljb0NURnt0aGVfbTN0YWRhdGFfMXNfbW9kaWZpZWR9 | base64 -d`