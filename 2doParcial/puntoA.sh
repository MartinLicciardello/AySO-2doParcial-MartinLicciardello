   18  apt list --installed |grep lvm
   19  sudo fdisk /dev/sdc #hice la particion ,asigne el swap  y asigne lvm a los discos sdc2, sdc3 sdc5 y sdc6
   20  history
   21  sudo mkswap /dev/sdc1
   22  sudo swapon /dev/sdc1
   23  free -h #chequeo swap activo
   24  sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6  
   25  sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
   26  sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
   27  sudo vgs #chequeo 
   28  sudo pvs 
   29  sudo lvcreate -L 1.99G vgAdmin -n lvAdmin
   30  sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
   32  sudo lvcreate -L 0.99G vgDevelopers -n lvDevops
   33  sudo fdisk -l
   34  sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin 
   35  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers 
   36  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTester 
   37  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops 
   38  sudo mkdir /mnt/lvDevelopers
   39  sudo mkdir /mnt/lvTester
   40  sudo mkdir /mnt/lvDevops
   41  sudo mkdir /mnt/lvAdmin
   42  sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin/
   43  sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers/
   44  sudo mount /dev/mapper/vgDevelopers-lvTester /mnt/lvTester/
   45  sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops/
   46  df -h
   47  sudo fdisk -l
   48  lsblk
   49  ll
   50  history > 2doParcial/puntoA.sh
