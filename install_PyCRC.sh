#/bin/bash
wget http://qpypi3.qpython.org/repository/1745924/PyCRC-1.21.tar.gz
tar -xzvf PyCRC-1.21.tar.gz
cd PyCRC-1.21
sudo /usr/bin/python2 setup.py install
cd ..
sudo rm -f PyCRC-1.21.tar.gz
sudo rm -fr PyCRC-1.21
