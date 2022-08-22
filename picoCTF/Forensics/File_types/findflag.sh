#!/bin/bash

sh Flag.pdf
ar xv flag
mv flag flag.cpio
cpio -F flag.cpio -i
bzip2 -d flag
mv flag.out flag.gz
gunzip flag.gz
lzip -d flag
lz4 -d flag.out flag
mv flag flag.lzma
lzma -d flag.lzma
mv flag flag.lzop
lzop -d flag.lzop
rm flag.out
lzip -d flag
mv flag.out flag.xz
xz -d flag.xz
cat flag | xxd -r -p > flag.txt
cat flag.txt