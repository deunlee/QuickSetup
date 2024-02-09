# Quick Setup

<br>

$$ \text{Setting up } \lim_{n \to \infty } n \text{ } \text{ servers is tiring. So we need } something. $$

### Tools:
- **System:** `htop`, `btop`, `wget`, `zip`, `vim`, `zsh`, `oh-my-zsh`, `neofetch`
- **Network:** `net-tools`, `tcpdump`, `nmap`
- **Development:** `git`, `gcc`, `code-server`
- **Container:** `docker`, `docker compose`
- **ETC:** `ffmpeg`

### Docker Compose with:
- **Web & CMS:** NGINX, PHP, Certbot, WordPress
- **Database:** MariaDB (+phpMyAdmin), PostgreSQL, MongoDB (+Mongo Express), _InfluxDB_, _Redis_
- **Development:** Python, Node.js, Java JDK, _Kafka_, _ElasticSearch_
- **SCM & CI/CD:** _GitLab_, _Jenkins_
- **Monitoring:** Uptime Kuma, _Grafana (+InfluxDB)_
- **IoT:** ThingsBoard, mosquitto, ESP-IDF
- **Desktop:** KasmVNC, Rocky Linux, Xfce
- **Remote:** Guacamole (+Guacd, PostgreSQL), _RustDesk_
- **ETC:** _HRConvert2_


```
curl -OL https://deunlee.com/q.sh && chmod +x q.sh && ./q.sh
# bash <(curl -fsSL https://deunlee.com/q.sh)
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
