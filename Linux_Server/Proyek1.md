# Membuat Proyek Web sederhana

## Alat dan Bahan

1. LAMP -> Linux, Apache, Mysql, PHP
2. VSCode

## Pelaksanaan

1. Buat Folder untuk kumpulan proyek PHP dan masuk kesana

```
mkdir PHP
cd PHP
```

2. Buat workspace proyek dan masuk kesana

```
mkdir proyek1; cd proyek1
```

3. Buat file PHP

```
touch model.php view.php controller.php
```

4. Buat [proyek PHP](../Pemrograman/Web/PHP1.md)
5. Instal Virtualbox dan Instal OS server disana
6. Install ssh agar bisa di-remote melalui mesin asli (Kalau belum terinstal)
7. Cek username dan alamat IP server dari Mesin disana (Terminal milik server)
8. Masuk ke mesin server dari mesin komputer asli kita

```
ssh username@ip
```

9. Instal Apache2, Mysql, dan PHP
10. Siapkan 1 folder untuk menyimpan SC (terserah diletakkan dimana)

```
mkdir /var/www/html/proyek1php
```

10. Kirim Source code PHP dari komputer asli ke komputer virtual

```
scp [source] [destination]
```

Contoh

```
scp ~/proyek/proyek1php/* server@192.168.1.123:/var/www/html/proyek1php/.
```

11. [Arahkan documentRoot Apache2 ke direktori proyek](Apache_route1.md)
12. Siapkan Mysql, buka `http://localhost/phpmyadmin/`
13. Buat database dan tabel sesuai yang telah dibuat di Source Code
14. Silahkan cek dengan Komputer asli kita, atau HP yang terhubung ke jaringan yang sama

```
http://[ip_server]/
```

# Belum selesai :)
