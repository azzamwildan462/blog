# Screen flicker atau Share screen rusak atau Screenshot rusak atau screen record rusak

Hal ini disebabkan karena bertabrakannya 2 render yaitu biasanya MESA dengan xf86-video-intel

## Solusi

Hapus package `xf86-video-intel`, karena sebenarnya dia sudah tidak digunakan lagi meskipun masih jadi dependensi dari Xorg
Arch-based

```
sudo pacman -Rd --nodeps xf86-video-intel
```

Debian-based

```
sudo apt remove xf86-video-intel
```

Lalu reboot

```
sudo reboot
```
