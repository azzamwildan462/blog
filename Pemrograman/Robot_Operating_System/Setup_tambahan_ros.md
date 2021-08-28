# Setup tambahan ROS untuk VSCode

## Pelakasanaan

1. Buka Command pallete `ctrl+shift+p`
2. Pilih `C/C++: Edit Configurations (JSON)`  
   ![](image/roserror2.png)
3. Buka file tersebut
   ![](image/roserror3.png)
4. Tambahkan `/opt/ros/noetic/include/` pada includePath
   ![](image/roserror4.png)

## Debugging

- Masih error? -> mungkin beda versi ROS, silahkan cari direktori include ROS lalu tambahkan ke includePath
