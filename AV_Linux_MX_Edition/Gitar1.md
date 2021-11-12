# Menguhubngakn Alat Musik eksternal dengan Komputer

## Sedikit penjelasan

- Input:  
  Gitar -> ADC -> Komputer
- Output:  
  Komputer -> Speaker komputer (atau earphone)  
  Komputer -> DAC -> speaker eksternal

# Alat dan Bahan

1. Alat musik eksternal contoh gitar elektrik
2. ADC (aku pake USB-guitarlink 70rb an (ADC+DAC))
3. Komputer atau laptop
4. Output (aku pake headset)
5. Software efek (contoh aku pake Guitarix)

## Pelaksanaan

1. Tancapkan guitarlink
2. Cek apakah sudah benar dengan `lsusb`
3. Cek lagi apakah bisa digunakan sebagai input atau tidak dengan `arecord -L`
4. Siapkan [JACK server](QjackCtl1.md) pada step nomer 5, silahkan ganti input ke Guitarlink, dan outputnya terserah bisa menggunakan speaker eksternal (pilih guitarlink) atau dari laptop (pilih PCH)
5. Buka Guitarix
6. Pergi ke QjackCtl-graph lalu atur routing dari system input ke Guitarix lalu output guitarix ke system output (System IO ini bergantung pada JACK server yang telah kita konfigurasi pada step 4)
7. Harusnya sekarang Output telah terdengar sesuai dengan output system yang telah kita konfigurasi tadi

## Debugging

- Suara gk keluar? -> cek apakah input telah masuk atau tidak, lihat di Guitarix.
- Guitarix tidak mendapat sinyal input? -> lihat routing QjackCtl apakah sudah benar
- Routing benar tapi masih gk ada sinyal input? -> perhatikan pada konfigurasi IO JACK server (QjackCtl)
- Konfigurasi sudah benar tapi masih gk work? -> masalah pada kabel jack gitar atau pada guitarlink-nya
- Semua sudah benar tapi gk keluar suara? -> lihat konfigurasi IO JACK server, dan perhatikan jenis output

## Sedikit tambahan

Untuk rekaman biasanya bisa di-route ke Ardour agar mudah untuk recordnya
