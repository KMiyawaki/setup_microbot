# Setup ROS for Jetson NANO

## Install commands

```shell
cd
git clone https://github.com/KMiyawaki/setup_microbot.git
cd setup_microbot
./stop_update.sh
./install_pip2.sh
./install_pip3.sh # ERROR will be occur, but no problem.
./install_basic_packages.sh
./install_ros.sh
```

- Close and re-open the terminal

```shell
cd ~/setup_microbot
./init_workspace.sh
./install_ros_web.sh
./install_microbot.sh
./install_python_packages.sh
./install_vscode_plugins.sh
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

## Test ROS Stage simulator

- Close all terminals and open new terminal.

```shell
roscd my_microbot_apps/launch/simulation
roslaunch navigation.launch use_teleop:=true
```

- You will see RViz and Stage simulator.
