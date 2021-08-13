# Memodifikasi default route dari Apache2 Web Server

## Alat dan Bahan

1. Text Editor bisa pakai Nano atau VSCode atau apapun itu
2. Apache2
3. Browser untuk testing

## Pelaksanaan

1. Masuk ke Direktori Config Apache2

```
cd /etc/apache2/
```

2. Buka apache2.conf dengan Text Editor
3. Tambahkan baris ini

```
<Directory [Routing_Direktori]>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
</Directory>

```

contoh

```
<Directory /var/www/html/proyek1/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
</Directory>

```

4. Masuk ke sites-enabled

```
cd sites-enabled
```

5. Edit 000-default.conf dengan mengganti DocumentRoot

```
DocumentRoot /var/www/html #Ini Default
Diganti dengan
DocumentRoot [Routing_Direktori]
```

contoh

```
DocumentRoot /var/www/html/proyek1
```

6. Restart Apache2

```
sudo service apache2 restart
```

7. Testing dengan cara mengunjungi `<alamat_ip>` contoh `192.168.1.11` atau `127.0.0.1`

## Sedikit Penjelasan

- Pada step nomer 3, tujuannya yaitu untuk menambahkan pilihan untuk dijadikan DocumentRoot (Root pada <alamat_ip>/)
- Step 5 yaitu untuk mengganti default dari DocumentRoot. Apa yang tertulis disini seharusnya sudah ditambahkan pada step 3
