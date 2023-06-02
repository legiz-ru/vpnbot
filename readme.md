telegram bot to manage servers (inside the bot)

<img src="https://github.com/mercurykd/vpnbot/assets/30900414/8442039d-6b54-4cb1-8826-22a87d9e6748" width="200">

### Wireguard
- create
- delete
- rename
- timer
- torrent blocking
- qr/config
- statistics
<img src="https://github.com/mercurykd/vpnbot/assets/30900414/51a79c93-8083-40ba-a14b-a6ef19f00531" width="200">
<img src="https://github.com/mercurykd/vpnbot/assets/30900414/fd6ffd9f-bd75-479c-8dca-ea6c0b938b6c" width="200">

### Shadowsocks + v2ray
- change password
- on/off v2ray
- qr
- short link
<img src="https://github.com/mercurykd/vpnbot/assets/30900414/fbe39617-63ae-4536-8ab0-e4269ed8784a" width="200">

### AdguardHome
- change password
- change upstream dns
- check dns
<img src="https://github.com/mercurykd/vpnbot/assets/30900414/a7d4ba52-494b-429f-a3e2-08c68c8353c4" width="200">

### PAC
- the ability to create your own PAC available by url with the ability to substitute the final ip and port
<img src="https://github.com/mercurykd/vpnbot/assets/30900414/5343e009-1b21-450f-918d-b811b98a0549" width="200">

### Settings
- add/change admin
- change language (en/ru)
- import/export all settings
- domain binding
- obtain ssl for domain
<img src="https://github.com/mercurykd/vpnbot/assets/30900414/431ec09d-9c14-4c74-b8f6-e49c142132e8" width="200">

---
environment: ubuntu 18.04/20.04/22.04, debian 11

install:

`wget -O- https://raw.githubusercontent.com/mercurykd/vpnbot/master/scripts/init.sh | sh -s YOUR_TELEGRAM_BOT_KEY`

---

additional options:

install as service(autoload on start):

bash scripts/install_as_service.sh
