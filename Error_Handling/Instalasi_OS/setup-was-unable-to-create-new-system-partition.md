# Setup was unable to create new system partition

## Sedikit cerita

Jangan terburu-buru format Disk (hapus semua data). Silahkan coba cara yang telah saya lakukan yaitu dengan cara boot dari disk bukan dari FD

## Pelaksanaan

1. Tancapkan FD seperti biasa (FB telah berisi bootable windows installation)
2. Boot melalui FD
3. Masuk ke instalasi windows sampai pada tahap pembuatan partisi
4. Buatlah sebuah partisi NTFS (size tergantung windowsnya) (saya dulu 5gb)
5. Masuk ke Command Prompt (CMD)
6. Masuk ke diskpart

```
diskpart
```

7. Masuk ke disk anda

```
select disk 0
```

8. Lihat partisi anda yang telah dibuat tadi

```
list volume
```

9. Jadikan sebagai partisi active

```
select volume 0
assign
active
```

10. Tampilkan lagi agar terlihat perubahannya

```
list volume
```

10. Copy semua data yang ada di FD ke partisi yang telah dibuat tadi

```
xcopy FD Partisi_yang_tadi/e/h/k
```

Contoh

```
xcopy e: c:/e/h/k
```

11. Jika telah selesai dan sukses, matikan komputer anda
12. Cabut FD
13. Hidupkan dan boot melalui disk dimana partisi tadi berada

## Sedikit tambahan

- Mungkin agak bingung, saya nulisnya juga bingung :)
- Intinya instal windows lewat disk dalam komputer bukan lewat FD
- Perhatikan bahwa tipe storage MBR hanya bisa menampung maksimal 4 partisi
