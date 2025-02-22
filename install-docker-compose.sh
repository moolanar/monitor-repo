# docker-compose (latest version)
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
# Fix permissions after download
sudo chmod +x /usr/local/bin/docker-compose
# Verify success
docker-compose version
