# Quick Setup


### Tools:
- **System:** `htop`, `btop`, `wget`, `zip`, `vim`, `zsh`, `oh-my-zsh`, `neofetch`
- **Network:** `net-tools`, `tcpdump`, `nmap`
- **Development:** `git`, `gcc`, `code-server`
- **Container:** `docker`, `docker compose`
- **ETC:** `ffmpeg`

### Docker Compose with:
- **Web & CMS:** NGINX, PHP, Certbot, WordPress
- **Database:** MariaDB (+phpMyAdmin), PostgreSQL, MongoDB (+Mongo Express), InfluxDB
- **Development:** Python, Node.js, Java JDK
- **Monitoring:** Uptime Kuma, Grafana
- **IoT:** ThingsBoard, mosquitto, ESP-IDF
- **Desktop:** KasmVNC, Rocky Linux, Xfce
- **Remote:** Guacamole (+Guacd, PostgreSQL)
- **ETC:** RustDesk, HRConvert2

```
curl -OL https://deunlee.com/q.sh && chmod +x q.sh && ./q.sh
bash <(curl -fsSL https://deunlee.com/q.sh)
```

```
git clone https://github.com/deunlee/QuickSetup server
cd server
./script/init.sh
docker compose build
docker compsoe up
```

<!--
git config --local user.name "TEST"
git config --local user.email "test@test.com"
-->




