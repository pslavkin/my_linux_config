sudo cryptsetup luksOpen /dev/disk/by-uuid/017c2445-691c-4594-83b2-7dba80ea8dd8 local_mass
sudo mount /dev/mapper/local_mass /mnt/local_mass
