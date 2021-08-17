# Belajar konfigurasi Plugin

## Alat dan bahan

1. QjackCtl
2. Calf plugin pack for JACK
3. Music player

## Pelaksanaan

1. [Setting server dan Calf plugin](Efek_jack.md)
2. Siapkan 3 plugin dasar yaitu Equalizer, Stereo tools (Spatial), Reverb
3. Atur routing yaitu dari Music Player -> EQ -> Spatial -> Reverb -> System playback
4. Pelajari [mastering](Mastering1.md)
5. Silahkan bre-kreasi

## Catatan

- Agar lebih mudah, sebaiknya kita buat preset agar tidak usah men-set lagi. Ada 3 preset dasar yaitu JACK server, Audio connection (patchbay QjackCtl), dan Calf plugin.
- JACK server : masuk ke setup QjackCtl -> konfigurasi -> save preset
- Audio connection : masuk ke patchbay QjackCtl -> new -> konfigurasi routing dari sana -> save
- Calf plugin : konfigurasi plugin -> save
- Jika butuh Spatial untuk mengatur Stereo dengan parameter frekuensi (Lebih bebas daripada Multi Spread namun hanya bisa mempersempit atau memperlebah frekuensi (tidak bisa mengatur volume kanan kiri)) bisa pilih **Multiband Enhancer**
- Jika butuh Spatial untuk mengatur volume kanan kiri (Berdasar frekuensi) bisa pilih **Multi Spread**

## Tambahan

- Saya telah meng-upload preset yang saya gunakan untuk mendengarkan musik, silahkan lihat pada Folder 'Misc/'
- Audio_connection.xml untuk patchbay QjackCtl
- Plugin(Calf) untuk Calf plugin
