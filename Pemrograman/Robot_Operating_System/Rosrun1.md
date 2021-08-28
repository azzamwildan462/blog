# Menjalankan ROS

## Teknik Manual

1. Masuk ke direktori workspace (proyek)

```
cd ~/Belajar_ROS/proyek1/
```

2. Source devel

```
source devel/setup.bash
```

3. Jalankan roscore terlebih dahulu

```
roscore
```

4. Buat tab baru pada terminal `ctrl+shift+t`
5. Lakukan step 2
6. Jalankan node

```
rosrun [nama_package] [nama_node]
```

Contoh

```
rosrun belajar_ros1 Node1
```

7. Seharusnya semua berjalan dengan lancar

## Menggunakan Roslaunch

1. Masuk ke directory package

```
cd ~/Belajar_ROS/proyek1/src/belajar_ros1/
```

2. Buat direktori 'launch' dan masuk kesana

```
mkdir launch; cd launch
```

3. Buat file launcher

```
touch run.launch
```

4. Isikan ini:

```
<launch>
    <node name="$(anon foo)" pkg="rospy_tutorials" type="talker.py" />
</launch>
```

Contoh

```
<launch>
    <node name="Node1" pkg="belajar_ros1" type="Node1" />
</launch>
```

5. Lalu run

```
source devel/setup.bash
roslaunch package_name file.launch
```

Contoh

```
source devel/setup.bash
roslaunch belajar_ros1 run.launch
```

6. Agar lebih cepat lagi, anda bisa buat shell script untuk menjalankan proyek

```
cd ~/Belajar_ROS/proyek1/
touch run.sh
chmod 755 run.sh
echo "source devel/setup.bash" >> run.sh
echo "roslaunch belajar_ros1 run.launch" >> run.sh
```

Untuk menjalankan:

```
./run.sh
```

## Kenapa pake Roslaunch?

- Agar mempermudah dalam me-run sebuah proyek yang besar
- Agar cepat
