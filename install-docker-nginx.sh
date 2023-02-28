curl -sSL https://get.daocloud.io/docker | sh
&&apt install -y docker-compose
&&curl -sSL https://gitee.com/uof9p-xh9-xx-dj/docker-compose/raw/main/docker-speedcn-up-daemon.json > /etc/docker/daemon.json 
&&sudo systemctl restart docker
&&docker volume create portainer_data && sudo docker run -d -p 8000:8000 -p 9000:9000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
&&cd /root && curl -sSL https://gitee.com/uof9p-xh9-xx-dj/docker-compose/raw/main/docker-compose-nginx.yml > docker-compose.yml
&&cd /root && docker-compose up -d
