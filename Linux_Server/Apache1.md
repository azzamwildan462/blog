# Memulai server dengan Apache2

## Alat dan Bahan

1. Apache2 (web server)
2. Browser firefox atau yang lainnya (Testing)
3. Router WIFI atau Hotspot dari HP (host jaringan)

## Pelaksanaan

1. Install Apache2

```
sudo apt install apache2
```

2. Cek status apache2

```
sudo service apache2 status
```

Untuk start

```
sudo serive apache2 start
```

3. Cek IP Address WLAN local

```
ifconfig | grep inet
```

4. Kunjungi `<alamat_ip>` contoh `192.168.1.11` atau `127.0.0.1`
5. Tes menggunakan device yang berbeda namun pada jaringan yang sama, dengan cara mengunjungi alamat ip milik web server
6. Default routing dari Apache ada di `/var/www/html`. Anda bisa menggantinya kemanapun anda mau. [Mengganti default route Apache2](Apache_route1.md)
7. [Mengaktifkan Https pada Apache2](Apache_https.md)

## Debugging

- Kebanyakan error saat port 80 atau 443 (https) sedang dipakai, coba dicek `sudo netstat -tulpn | grep :80 `. Jika tidak ada, berarti bukan karena port 80 atau port 443.

## Instal menggunakan shell script

Masuk ke direktori 'Shell script' lalu

```
./Install_apache.sh
```

Pada baris 1 saya beri `sudo apt update` agar mendapat apache2 dengan versi terbaru
