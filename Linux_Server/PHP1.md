# PHP

## Sedikit cerita

PHP adalah bahasa pemrograman yang berada di sisi server.

## Instalasi

1. Pastikan agar repo selalu update

```
sudo apt update
```

2. Instal PHP beserta modul apache dan mysql

```
sudo apt install php libapache2-mod-php php-mysql
```

3. Untuk melihat modul yang tersedia di repo gunakan command:

```
apt-cache search php-
```

4. Cek apakah sudah terinstal atau belum

```
php --version
```

## Testing

1. Buat 1 file php

```
cd /var/www/html
touch tes.php
echo "phpinfo();" >> tes.php
```

2. Buka di web http://LOCAL_IP/tes.php

## Debugging

- tes.php tidak ditemukan? -> perhatikan direktori Root anda `cat /etc/apache2/sites-enabled/000-default.conf | grep DocumentRoot` lalu cocokkan dengan direktori yang anda gunakan untuk menaruh tes.php
