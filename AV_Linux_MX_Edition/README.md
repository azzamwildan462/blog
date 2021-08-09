# AV Linux MX Edition

AV Linux MX Edition adalah sebuah Distro powerfull berbasis MX Linux yang dikhususkan untuk pemusik atau orang-orang yang suka bergulat di dunia Multimedia. Distro ini di-desain dengan RT-kernel yang telah dikustomisasi untuk keperluan bermusik dan mendapatkan latency sekecil mungkin. Selain itu, juga terdapat Package dan Plugin yang siap digunakan untuk kepentingan bermusik.

## Persyaratan

Syarat yang dibutuhkan adalah niat, usaha, dan doa. Untuk mempermudah debugging, dibutuhkan pemahaman logika yang baik dan terbiasa dengan dunia CLI (Command Line Interface). Terbiasa dengan CLI disini maksudnya terbiasa dengan command-command bash linux seperti cd, ls, mkdir, touch, rm, chmod, grep, find, nano, cat.

## Instalasi

Untuk penggunaan AV Linux MX Edition saya sarankan untuk dual-boot karena jika hanya di Virtualbox atau VM lainnya, tidak bisa merasakan dahsyatnya RT-Kernel. Untuk persiapannya adalah sebagai berikut:

1. Cari tahu tentang BIOS mulai dari Legacy dan UEFI sampai proses booting Sistem Operasi.
2. Pahami tipe storage GPT dan MBR
3. Buat sebuah partisi RAW (Unallocated)
4. Backup data (Jika takut kehilangan)
5. Siapkan Flashdisk 8 Gb dan download file iso AV Linux [disini](http://www.bandshed.net/avlinux/)
6. Buat bootable FD, bisa menggunakan [rufus](https://rufus.ie/en/)
7. Colokkan FD ke laptop lalu restart laptop (Pastikan untuk mengatur BIOS agar booting melalui FD)
8. Seharusnya anda akan masuk ke OS AV Linux
9. Klik kanan pada desktop lalu cari "Install AVR-MXE to HDD" lalu klik saja
10. Window Installer akan muncul dan ikuti saja stepnya
11. Install Linux seperti pada umumnya, buat partisi '/','/home', dan swap dari partisi RAW (Unallocated) yang telah dibuat tadi. (Inilah yang akan menentukan hilangnya data atau tidak).
12. Next-next saja ikuti perintah.
13. Setelah selesai maka sistem akan meminta untuk Restart komputer, Silahkan Restart saja lalu cabut FD nya.
14. Seharusnya akan masuk ke GRUB, disini anda bisa milih untuk pake Systemd atau free-Systemd terserah.
15. Jika masih ada error, kenali pesan error nya lalu cari solusinya. Kebanyakan adalah error di Boot sequence nya, perhatikan dan masuk ke settingan BIOS anda untuk menyelesaikannya.
