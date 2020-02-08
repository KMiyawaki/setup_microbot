#!/bin/bash
cd ~
wget -O camera_overrides.isp https://www.dropbox.com/s/ougz816496m4ilw/camera_overrides.isp?dl=1
sudo mv ./camera_overrides.isp /var/nvidia/nvcam/settings/camera_overrides.isp
sudo chmod 664 /var/nvidia/nvcam/settings/camera_overrides.isp
sudo chown root:root /var/nvidia/nvcam/settings/camera_overrides.isp
