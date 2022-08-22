#!/bin/bash

gunzip disk.img.gz
mmls disk.img | grep Linux | awk -F "   " '{print $4}' | nc saturn.picoctf.net 52279 | grep -oE "picoCTF{.*}"
