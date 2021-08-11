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

## Debugging
