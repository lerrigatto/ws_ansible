#!/bin/bash

echo "getting pip"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
echo "installing pip"
python3 get-pip.py --user
echo "install ansible"
python3 -m pip install --user ansible
echo "cleanup"
rm get-pip.py
echo "Done"
