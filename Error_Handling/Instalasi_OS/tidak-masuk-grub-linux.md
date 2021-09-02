# Tidak memsauki GRUB linux dan langsung masuk ke windows (Dualboot)

## Solusi

Santai saja, coba masuk ke Windows dulu lalu lihat apakah Linux sudah berhasil terinstal:

- Lewat diskmgmt.msc dan lihat apakah partisi Linux sudah ada (Tidak unallocated)

Jika Linux sudah berhasil ter-instal:

1. Gunakan FD untuk masuk ke sistem linux (Ini disini masih linux dari FD bukan linux hasil instal)
2. Gunakan boot-repair

```
sudo add-apt-repository ppa:yannubuntu/grub-repair
sudo apt install -y grub-repair
grub-repair
```

3. Silahkan pergi ke bagian advanced lalu set dimana anda meletekkan boot (/dev/sda[x]) contoh (/dev/sda3)
4. Ikuti saja perintahnya sampai selesai
5. Matikan laptop atau komputer anda
6. Cabut FD
7. Hidupkan lagi komputernya, seharusnya ini akan masuk ke GRUB linux atau bisa langsung masuk linux
8. Jika langsung masuk linux, buka terminal lalu run command `sudo update-grub`
9. Lalu matikan dan hidupkan lagi, seharusnya akan masuk ke GRUB dan ada pilihan mau masuk ke Windows atau Linux

`Gambarnya nanti saja.. lagi males wkwkwkwk`
