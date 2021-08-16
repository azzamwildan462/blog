# Tuning latency menggunakan QjackCtl

## Alat dan Bahan

1. QjackCtl
2. Browser
3. Music player

## Pelaksanaan

1. Buka QjackCtl lalu masuk ke setup
2. Silahkan edit pada 3 makhluk tersebut (set latency hingga sekecil mungkin (96000;16;2))  
   ![](image/qjack-setting1.png)
3. Usahakan angka yang terletak dibawah tulisan **started** tidak berwarna merah  
   ![](image/qjack-setting4.png)
4. Jika berwarna merah maka naikkan latency

## Perulangan

1. Naikkan latency dengan me-modifikasi Sample rate, Frames/period, dan Periods/buffer  
   ![](image/qjack-setting1.png)
2. Apply dan restart server
3. Jika angka yang terletak dibawah tulisan **started** berwarna merah, maka kembali ke nomer 1
   ![](image/qjack-setting4.png)
   Jika berwarna hijau, lanjut ke sub-bab **Lanjutan**

## Lanjutan

1. Play lagu dengan Sample rate yang sama selama 3-5 menit
2. Jika angka yang terletak dibawah tulisan **started** berwarna merah, maka kembali ke nomer 1 sub-bab **Perulangan**
   ![](image/qjack-setting4.png)
   Jika berwarna hijau, lanjut ke nomer 3
3. Simpan angka Sample rate, Frames/period, dan Periods/buffer dimana saja lalu apply ke server dan restart server

## Debugging

- Setelah restart server berkali-kali lalu mengalami error? -> kemungkinan server gagal untuk dihentikan, silahkan dicek `ps aux | grep jack` atau menggunakan `htop` atau `jack_control status`. Lalu `kill [pid]` atau `killall jack` atau `jack_control stop`.
- Audio yang dihasilkan buruk? -> Biasanya terjadi perbedaan Sample rate, silahkan untuk menyamakan Sample rate.
