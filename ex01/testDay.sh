#!/bin/bash
touch testDay00 
dd if=/dev/zero of=testDay00 bs=1 count=40
touch -amt 202304131013 testDay00
chmod 455 testDay00
