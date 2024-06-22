#!/bin/bash
mkdir test0 test2

touch test1 test3 test4

dd if=/dev/zero of=test1 bs=1 count=4

dd if=/dev/zero of=test3 bs=1 count=1

dd if=/dev/zero of=test4 bs=1 count=2

touch -amt 202406012047 test0
touch -amt 202406012146 test1
touch -amt 202406012244 test2
touch -amt 202406012344 test3
touch -amt 202406012343 test4

chmod 715 test0
chmod 714 test1
chmod 504 test2
chmod 404 test3
chmod 641 test4

ln test3 test5 
ln -s test0 test6

dd if=/dev/zero of=test5 bs=1 count=1
dd if=/dev/zero of=test6 bs=1 count=5

touch -hamt 202406012344 test5
touch -hamt 202406012220 test6

chmod -h 755 test6

