# Routing audio untuk multi Aplikasi

## Alat dan Bahan

1. QjackCtl
2. Aplikasi (Contoh Firefox dan Ardour)

## Pelaksanaan lewat Ardour

1. Nyalakan [JACK dengan Pulseaudio](Jack_pulse.md)
2. Routing [Ardour dengan JACK](Ardour_jack.md)
3. Buat 1 audio track di Ardour (stereo)
4. Lalu Route pulseaudio jack SINK ke track tersebut

## Pelaksanaan tanpa Ardour

1. Nyalakan [JACK dengan Pulseaudio](Jack_pulse.md)
2. Routing [Ardour dengan JACK](Ardour_jack.md)
3. Route semua App ke system playback. Atau terserah mau ke Effector dahulu atau tidak. Intinya untuk keluar suara, harus di-route ke system playback
