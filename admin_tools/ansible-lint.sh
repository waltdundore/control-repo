#!/bin/bash

echo "Do not run this script as root. The point is for it to add the ability for a non-root user to run ansible-lint."

echo PATH=~/.local/bin:$PATH

cd ~/Downloads
wget https://bootstrap.pypa.io/get-pip.py
python ~/Downloads/get-pip.py

python3 -m pip install --user ansible-lint

ansible-lint --version
