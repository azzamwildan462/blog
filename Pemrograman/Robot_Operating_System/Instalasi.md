# Instalasi ROS Noetic pada Ubuntu 20.04

## Alat dan Bahan

1. Akses internet
2. Ubuntu 20.04 atau Ubuntu versi lain seperti Lubuntu, Xubuntu, Kubuntu (saya pakai Xubuntu). Atau mungkin Debian beserta turunan lainnya juga bisa

## Pelaksanaan

1. Meng-enable restricted, multiverse, universe Repo

```
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo add-apt-repository restricted
```

2. Menambahkan ROS Package repo kepada source repo kita

```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```

3. Men-set keyring untuk ROS Package

```
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
```

4. Jika anda belum install curl, maka install dengan `sudo apt install curl`
5. Update repo

```
sudo apt update
```

6. Instal ROS

```
sudo apt install ros-noetic-desktop-full
```

7. Source ROS pada .bashrc

```
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

8. Instalasi tambahan untuk membuat dan memanajemen sendiri ROS Package

```
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
sudo apt install python3-rosdep
sudo rosdep init
rosdep update
```
