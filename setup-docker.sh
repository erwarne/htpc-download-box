# Prevent Sleep
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

# Post Install steps for Docker
# https://docs.docker.com/engine/install/linux-postinstall/
sudo groupadd docker
sudo usermod -aG docker $USER

# Log out and back in
newgrp docker

# Verify Permissions
docker run hello-world

# Configure Docker to run on start
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Start up the containers
docker-compose up -d