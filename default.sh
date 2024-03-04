#/bin/bash

# Install Packages
PACK='vim git python3 python3-pip python3-dev libssl-dev libffi-dev build-essential'
apt-get update
apt-get upgrade -y
apt-get install -y $PACK

# Install pwntools
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pwntools

# Install gdb-peda
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
