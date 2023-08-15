# 14 Solution
* Install binwalk so that it may be invoked locally (`python3 setup.py install`)
* Run `binwalk -e dolls.jpg --run-as=root` to extract hidden files within the image
```
DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             PNG image, 594 x 1104, 8-bit/color RGBA, non-interlaced
3226          0xC9A           TIFF image data, big-endian, offset of first image directory: 8

WARNING: Extractor.execute failed to run external extractor 'unzip -P '' -o '%e'': [Errno 2] No such file or directory: 'unzip', 'unzip -P '' -o '%e'' might not be installed correctly

WARNING: Extractor.execute failed to run external extractor 'jar xvf '%e'': [Errno 2] No such file or directory: 'jar', 'jar xvf '%e'' might not be installed correctly

WARNING: Extractor.execute failed to run external extractor '7z x -y '%e' -p ''': [Errno 2] No such file or directory: '7z', '7z x -y '%e' -p ''' might not be installed correctly
272492        0x4286C         Zip archive data, at least v2.0 to extract, compressed size: 378950, uncompressed size: 383938, name: base_images/2_c.jpg
651608        0x9F158         End of Zip archive, footer length: 22
```

We see a directory named `base_images` that we head into and find another image file named `2_c.jpg`. We can repeat the `binwalk -e 2_c.jpg --run-as=root` command to reveal more hidden files. Repeat this process until you come upon the `flag.txt` file, which contains the hidden flag that is the solution.