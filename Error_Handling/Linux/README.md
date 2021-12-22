# Menangani segala hal yang pernah saya tangani pada linux

- Screen flicker atau Share screen rusak atau Screenshot rusak atau screen record rusak -> [ini](xhsm-intel-bug.md)
- Masalah pada sound -> Coba baca-baca di bagian AV_Linux_MX_Edition

## Masalah dasar

- Permission denied -> pakai `sudo` perhatikan juga akses filenya `ll [nama_file]` lalu `chmod [rule] [file]`
- No such file or direcotory -> perhatikan direktori dengan command dasar `cd [direktori]` `ls` atau `ll`
- `Pacman -S` failed -> update DB Repo `sudo pacman -Syy`
- apt atau pacman gagal -> pastikan hanya 1 proses yang menggunakan apt atau pacman, cek dengan `lsof`
- Setelah install linux pastikan update langsung, `pacman -Syy` lalu `pacman -Syu` atau `apt update` lalu `apt upgrade`
