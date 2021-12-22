# Login loop linux

Permasalahan ini banyak terjadi, apalagi bagi pengguna SSD NVME. Kenapa? karena banyak distro linux yang defaultnya bukan load menggunakan VMD. VMD ini adalah kontroler nya SSD NVME. Biasanya jika mematikan splash maka stuck pada

## Solusi

### NVME

Memberi default kernel parameter dan setup linux untuk menggunakan kontroler VMD. Atau menonaktifkan intel VMD dari BIOS/UEFI secara langsung.

#### Cara 1

Ini saya lakukan pada linux turunan arch, mungkin kalau pada turunan debian akan sedikit beda karena dia menggunakan `initramfs`, tinggal menyesuaikan saja

1. Masuk linux dengan Bootable Flashdisk
2. Chroot ke system linux

```
mkdir /mnt/direktori_untuk_menyimpan_hasil_mount
mount [letak_root_linux_di_storage] [direktori_untuk_menyimpan_hasil_mount]
mount /dev/nvme0n1p6 /mnt/direktori_untuk_menyimpan_hasil_mount
```

Untuk mengeceknya bisa menggunakan `lsblk` atau bisa diingat ingat saja diletakkan dimana root linux nya wkwkwk  
lalu chroot ke sana

```
chroot /mnt/direktori_untuk_menyimpan_hasil_mount
```

Atau jika pakai Garuda linux bisa langsung dengan cepat, tinggal buka aplikasi chroot. Saat sudah di dalam root linux, saatnya beraksi wkwkwwk. Menambahkan module vmd pada mkinitcpio.conf

```
micro /etc/mkinitcpio.conf
```

Bisa pakai text editor apa saja, saya suka pakai micro wkwkwkwk  
Tambahkan 'vmd' pada 'Modules= blablablabal'  
![conf](image/mkinitcpio.png)  
3. Update mkinitcpio

```
mkinitcpio -p linux
#atau
mkinitcpio -P
```

4. Menambahkan parameter nvme_load pada default kernel parameter

```
micro /etc/default/grub
```

Lalu tambahkan `nvme_load=YES` pada 'GRUB_CMDLINE_LINUX_DEFAULT=' atau pada 'GRUB_CMDLINE_LINUX='  
5. Finishing

```
update-grub
```

6. Lalu restart dan lihat hasilnya

#### Cara 2

1. Pergi ke BIOS/NVME
2. Cari konfigurasi intel vmd, jika tidak ada, tekan `ctrl+s`
3. Ganti ke disable

### SATA

Terkadang ada beberapa distro yang tidak bisa me-load dari driver RAID, jadi kalau gitu tinggal ubah driver SSD ke AHCI dari BIOS/UEFI

1. Masuk ke BIOS/UEFI
2. Pergi ke konfigurasi SATA
3. Ganti ke AHCI
4. Save Configurations lalu Reboot

Setelah melakukan hal diatas pasti akan ada masalah pada windows 10 nya wkwkwkwkwk biasanya win10 ndak bisa langsung pakai AHCI, jadi harus diatur ulang lagi bcdedit nya, tapi santai aja.. ndak akan ada file yang hilang.. next time saya tulis (lagi males buka windows).
