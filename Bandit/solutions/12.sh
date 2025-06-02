#!/bin/sh/
mkdir /tmp/learning
cd /tmp/learning
cp ~/data.txt .
xxd -r data.txt > data.bak
file data.bak
# data.bak: gzip compressed data, was "data2.bin", last modified: Thu Apr 10 14:22:57 2025, max compression, from Unix, original size modulo 2^32 585
mv data.bak data.gz
gunzip data.gz
file data
# data: bzip2 compressed data, block size = 900k
mv data data.bz2
bunzip2 data.bz2
file data
# data: gzip compressed data, was "data4.bin", last modified: Thu Apr 10 14:22:57 2025, max compression, from Unix, original size modulo 2^32 20480
mv data data.gz
gunzip data.gz
file data
# data: POSIX tar archive (GNU)
tar xvf data
file data5.bin
# data5.bin: POSIX tar archive (GNU)
tar xvf data5.bin
file data6.bin
# data6.bin: bzip2 compressed data, block size = 900k
mv data6.bin data6.bz2
bunzip2 data6.bz2
file data6
# data6: POSIX tar archive (GNU)
tar xvf data6
file data8.bin
# data8.bin: gzip compressed data, was "data9.bin", last modified: Thu Apr 10 14:22:57 2025, max compression, from Unix, original size modulo 2^32 49
mv data8.bin data8.gz
gunzip data8.gz
cat data8
# The password is FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
exit
ssh bandit13@bandit.labs.overthewire.org -p 2220