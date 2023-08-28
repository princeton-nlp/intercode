# 1 Solution
Unzip to get the image file. Use sleuthkit commands to explore the disk image.
`mmls dds2-alpine.flag.img` gives some details.
The root directory in the 3rd partition contains the specifed file, can be found via `fls -o 2048 dds2-alpine.flag.img 18290`. Using `icat` displays the flag.

[Reference](https://reversingfun.com/posts/picoctf-2021-forensics/#disk-disk-sleuth-ii)

[Sleuthkit reference](https://www.youtube.com/watch?v=ld9RW3pxAKg)