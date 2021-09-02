# Tips dan Trik debugging

## Debug source code

- Baca dan resapi pesan error ketika gagal `catkin_make`
- `catkin_make` berhasil tapi masih error? -> lihat alur sistemnya

## Melihat alur sistem tranportasi data antar node

- Gunakan perintah `rosrun rqt_graph rqt_graph`

## Melihat node yang berjalan

- Gunakan perintah `rosnode list` untuk melihat node apa saja yang berlajan
- Tidak ada node seperti yang diharapkan? -> lihat kembali launchernya (file .launch)
- File launcher benar tapi masih belum jalan? -> Lihat CMakeList.txt pastikan sudah memasukkan node kesana
- Masih belum jalan nodenya? -> coba build lagi `catkin_make`

## Melihat topik yang tersedia

- Gunakan `rostopic list` untuk melihat topik apa saja yang telah di-advertise-kan
- Atau bisa gunakan tambahan `grep` untuk mencari topik, `rostopic list | grep [nama_topik]`
- Gunakan `rostopic echo [nama_topik]` untuk melihat isi topik
- Topik tidak tersedia? -> lihat SC pada bagian advertise
- Topik tersedia tapi isi tidak ada? -> lihat pada bagian ros::publish.publish() perhatikan juga tipe datanya harus sesuai dengan apa yang telah di-include di header

## Tambahan

- Hasil tidak sesuai? -> gunakan `ROS_INFO()` untuk debugging
