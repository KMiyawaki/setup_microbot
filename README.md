# Setup Microbot Software

## Setup Jetson NANO

- See [Getting Started With Jetson Nano Developer Kit](https://developer.nvidia.com/embedded/learn/get-started-jetson-nano-devkit)
- Set user name to `jetson` for JetCard.

- If you want to install ROS only, see [Setup ROS for Jetson NANO](./ros_minimal.md)

## Install commands

```shell
cd
git clone https://github.com/KMiyawaki/setup_microbot.git
cd setup_microbot
./stop_update.sh
./install_jetcard.sh # You have to enter pass word, during installation process. If you have any erros, try again.
./install_pip2.sh # Recover pip for python2 to install pyTorch for python2.7
./install_camera_overrides.sh
./install_basic_package.sh
./install_jetson_interface.sh # Model Downloader->Download default models. Do not install pyTorch.
./install_ros.sh
```

- Close and re-open the terminal

```shell
cd ~/setup_microbot
./init_workspace.sh
./install_ros_web.sh
./install_ros_python3_supplement.sh
./install_jetbot_ros.sh
./install_jetbot_notes.sh
./install_microbot.sh
./install_python_packages.sh
./install_torch2trt.sh
./install_vscode_plugins.sh
./install_create_ap.sh
```

## Register create_ap service

```shell
cd ~/setup_microbot
./register_create_ap_service.sh
Enter SSID: # Enter SSID for virtual wifi access point.
Enter passphrase: # Enter passphrase for the SSID
```

- If you want to unregister the create_ap serivice, run the following command.

```shell
cd ~/setup_microbot
./unregister_create_ap_service.sh
```

## Japanese language support(optional)

```shell
cd ~/setup_microbot
./install_japanese.sh
```

## Upgrade all ubuntu packages

```shell
cd ~/setup_microbot
./upgrade_packages.sh
```

## Stop X server

```shell
cd ~/setup_microbot
./stop_x11.sh
```

## Start X server

```shell
cd ~/setup_microbot
./start_x11.sh
```

## Test and build SSD-Mobilenet

- See https://github.com/dusty-nv/jetson-inference/blob/master/docs/detectnet-console-2.md#detecting-objects-from-the-command-line

```shell
cd
cd jetson-inference/data
detectnet-console.py --network=ssd-mobilenet-v2 images/peds_0.jpg output.jpg
eog output.jpg
```

## Test ROS Stage simulator

- Close all terminals and open new terminal.

```shell
roscd my_microbot_apps/launch/simulation
roslaunch navigation.launch use_teleop:=true
```

- You will see RViz and Stage simulator.
