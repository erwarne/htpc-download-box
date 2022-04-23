# For Ubuntu
sudo apt update
sudo apt install nfs-common

# Mount the volume
sudo mount -t nfs 192.168.1.115:/volume1/HTPC /mnt
sudo mount -t nfs 192.168.1.115:/volume1/Storage /mnt