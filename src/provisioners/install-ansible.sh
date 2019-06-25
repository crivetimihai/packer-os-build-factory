#!/bin/bash
ANACONDA_URL="https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh"

(cd /tmp && curl -O ${ANACONDA_URL})
sh /tmp/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/anaconda3 > /tmp/anaconda3.log
tail -5 /tmp/anaconda3.log
export PATH="$HOME/anaconda3/bin:$PATH"
echo 'export PATH="$HOME/anaconda3/bin:$PATH"' >> ~/.bashrc

# Upgrade pip and install ansible
pip install --upgrade pip && echo which pip
pip install --upgrade ansible
which ansible-galaxy

# Cleanup
rm -rf /tmp/Miniconda3-latest-Linux-x86_64.sh /tmp/anaconda3.log
