# Sistem transportasi data antar node pada ROS

## Sedikit cerita

Konsep transportasi data ini hampir mirip dengan protokol MQTT. Jadi ada namanya Publisher dan Subscriber dengan sebuah Message yang disimpan dalam Topik yang berada pada Roscore.

## Konsep sederhana

Publisher (Node) -> Publish message (data) dengan Topik tertentu -> Subscriber (Node) subscribe ke Topik yang sama dengan Topik dari Publisher -> Subscriber menerima Message (data) yang ada di Topik

## Persiapan

1. Masuk ke direktori tempat menyimpan SC di dalam sebuah package

```
cd ~/Belajar_ROS/proyek1/src/belajar_ros1/src/
```

2. Buat 2 file Cpp (Untuk Publisher dan Subscriber)

```
touch Pub.cpp Sub.cpp
```

3. Menyiapkan CMakeLists yang terletak di dalam direktori belajar_ros1

```
add_executable([nama_node] src/[nama_file])
target_link_libraries([nama_node] ${catkin_LIBRARIES})
```

Contoh

```
add_executable(Publisher src/Pub.cpp)
target_link_libraries(Publisher ${catkin_LIBRARIES})
add_executable(Subscriber src/Sub.cpp)
target_link_libraries(Subscriber ${catkin_LIBRARIES})
```

4. Saatnya ngoding

## Source code Publisher

1. Contoh publisher sederhana

```
#include "ros/ros.h"
#include "std_msgs/Int16.h" //tipe data untuk data di dalam topik

int main(int argc, char **argv)
{
    ros::init(argc, argv, "Publisher"); //ros::init(argc,argv,"nama_node") -> untuk membuat node
    ros::NodeHandle node_handler; //untuk meng-handle node
    ros::Publisher publisher_x,publisher_y;
    publisher_x = node_handler.advertise<std_msgs::Int16>("Posisi_X", 64); //advertise<tipe_data>("nama_topik",size) -> untuk membuat topik Posisi_X
    publisher_y = node_handler.advertise<std_msgs::Int16>("Posisi_Y", 64); //advertise<tipe_data>("nama_topik",size) -> untuk membuat topik Posisi_Y

    ros::Rate loop_rate(10) //Frekuensi 10 Hz

    while(ros::ok()){
        std_msgs::Int64 X,Y; //menyiapkan variabel untuk menampung pesan (data)
        X.data = 12; //assign nilai ke variabel
        Y.data = 23; //assign nilai ke variabel
        publisher_x.publish(X); //mem-publish message
        publisher_y.publish(Y); //mem-publish message
        ros::spinOnce(); //kurang paham juga aku :) intinya untuk membuat perulangan terjadi dengan frekuensi yang telah dibuat di ros::Rate
    }

    return 0;
}
```

## Source code Subscriber

1. Contoh subscriber sederhana

```
#include "ros/ros.h"
#include "std_msgs/Int16.h" //tipe data untuk data di dalam topik

//data yang diterima dari topik ditampung oleh msg->data
void x_callback(const std_msgs::Int16::ConstPtr& msg){
    ROS_INFO("Posisi X adalah: %d",msg->data);
}

void y_callback(const std_msgs::Int16::ConstPtr& msg){
    ROS_INFO("Posisi Y adalah: %d",msg->data);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "Publisher"); //ros::init(argc,argv,"nama_node") -> untuk membuat node
    ros::NodeHandle node_handler; //untuk meng-handle node
    ros::Subscriber subscriber_x, subscriber_y;

    ros::spin(); //ini akan selalu memanggil semua fungsi callback yang dibuat
    return 0;
}
```

## Menjalankan program

### Manual

Lebih lengkapnya lihat [disini](Rosrun1.md)

1. Siapkan 3 tab (roscore, publisher, subscriber)
2. Jalankan roscore

```
roscore
```

3. Jalankan publisher

```
rosrun belajar_ros1 publisher
```

4. Jalankan subscriber

```
rosrun belajar_ros1 subscriber
```

### Roslaunch

Lengkapnya ada [disini](Rosrun1.md)

1. Tambahkan node publisher dan subscriber pada file launcher

```
    <node name="publisher" pkg="belajar_ros1" type="publisher" />
    <node name="subscriber" pkg="belajar_ros1" type="subscriber" />
```

Sehingga menjadi seperti ini:

```
<launch>
    <node name="Node1" pkg="belajar_ros1" type="Node1" />
    <node name="publisher" pkg="belajar_ros1" type="publisher" />
    <node name="subscriber" pkg="belajar_ros1" type="subscriber" />
</launch>
```

2. Jalankan semuanya dengan:

```
roslaunch belajar_ros1 run.launch
```

## Sedikit catatan

- Jangan lupa untuk `catkin_make` setelah mengedit source code
- Jangan lupa untuk `source devel/setup.bash`
