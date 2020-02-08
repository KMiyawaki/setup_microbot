#/bin/bash
wget https://pypi.python.org/packages/source/P/PyCRC/PyCRC-1.21.tar.gz
tar -xzvf PyCRC-1.21.tar.gz
cd PyCRC-1.21
sudo /usr/bin/python2 setup.py install
cd ..
sudo rm -f PyCRC-1.21.tar.gz
sudo rm -fr PyCRC-1.21
