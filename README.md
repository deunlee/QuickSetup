# Quick Setup


### Tools:
- **System:** `htop`, `wget`, `zip`, `vim`, `zsh`, `oh-my-zsh`, `neofetch`
- **Network:** `net-tools`, `tcpdump`
- **Development:** `git`, `gcc`, `code-server`
- **Container:** `docker`, `docker compose`

```sh
curl -o q.sh https://raw.githubusercontent.com/deunlee/QuickSetup/main/script/quick.sh
chmod +x q.sh && ./q.sh
```

### Docker Compose with:
- **Web & CMS:** `NGINX`, `PHP`, `Certbot`, `WordPress`
- **Database:** `MariaDB`, `phpMyAdmin`, `MongoDB`, `Mongo Express`, `InfluxDB`
- **Development:** `Python`, `Node.js`, `Java`
- **Monitoring:** `Uptime Kuma`, `Grafana`
- **IoT:** `mosquitto`, `ESP-IDF`
- **Desktop:** `KasmVNC`, `Rocky Linux`, `Xfce`
- **ETC:** `RustDesk`, `Guacamole`, `HRConvert2`

```sh
git clone https://github.com/deunlee/QuickSetup server
cd server
./script/init.sh
docker compose build
docker compsoe up
```




