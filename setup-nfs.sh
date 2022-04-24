# For Ubuntu
sudo apt update
sudo apt install nfs-common

# Mount the volume
sudo mount -t nfs 192.168.1.115:/volume1/HTPC /mnt

# Making the mount point automatic
sudo nano /etc/fstab
### Add the following to the end of the file:
192.168.1.115:/volume1/HTPC /mnt nfs defaults 0 0

# Switch to mounted directory and clone repo
# Clone repository to "local" directory
cd /mnt
sudo mkdir dev
cd dev
git clone https://github.com/erwarne/htpc-download-box ./

# Create folder structure
sudo mkdir data
sudo mkdir -p /mnt/dev/data/{media,torrents,usenet}
sudo mkdir -p /mnt/dev/data/media/{music,movies,tv}
sudo mkdir -p /mnt/dev/data/torrents/{music,movies,tv}
sudo mkdir -p /mnt/dev/data/usenet/{music,movies,tv}
sudo mkdir -p /mnt/dev/config/{sonarr,radarr,jackett,deluge,plex}


cp -a /mnt/dev/config . /home/eric/dev-htpc/config