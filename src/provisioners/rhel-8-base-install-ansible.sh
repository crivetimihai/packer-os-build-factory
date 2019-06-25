#!/bin/bash
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh --directory-prefix /tmp
sh /tmp/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/anaconda3 > /tmp/anaconda3.log
tail -5 /tmp/anaconda3.log
echo 'export PATH="$HOME/anaconda3/bin:$PATH"' >> ~/.bashrc
. ~/.bashrc

# Upgrade pip and install ansible
pip install --upgrade pip
pip install --upgrade ansible

# Cleanup
rm -rf /tmp/Miniconda3-latest-Linux-x86_64.sh /tmp/anaconda3.log
