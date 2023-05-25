---

<h1 align="center">Mikhmon</h1>
<h3 align="center">The Free Software For Mikrotik Management</h3>

---

<p align="center">
<img alt="Logo Banner" src="https://raw.githubusercontent.com/animegasan/mikhmon/main/img/banner.png"/>
</p>

---

MikroTik Hotspot Monitor (Mikhmon) is a web-based application (MikroTik API class PHP) to help manage the Mikrotik management system, especially hotspot management.
<br>
<br>
The image build on <a href="http://www.alpinelinux.org" target="_blank">Alpine Linux</a>, App Mikhmon from <a href="https://github.com/laksa19/mikhmonv3" target="_blank">Laksamadi Guko</a> and Dockerfile inspiration from <a href="https://github.com/TrafeX/docker-php-nginx" target="_blank">Trafex</a>.

---

## Supported Architectures
We utilise the docker manifest for multi-platform awareness. Simply pulling ```animegasan/mikhmon:latest``` should retrieve the correct image for your arch, but you can also pull specific arch images via tags.

The architectures supported by this image are:

| Architecture | Available | Tag |
| :----: | :----: | ---- |
| x86-64 | ✅ | amd64-\<version tag\> |
| arm64 | ✅ | arm64-\<version tag\> |
| armhf	| ✅	| arm32v7-\<version tag\> |

---

## Usage
Here are some example snippets to help you get started creating a container.
### docker-compose (recommended)
```yaml
---
version: "2.1"
services:
  mikhmon:
    image: animegasan/mikhmon:latest
    container_name: mikhmon
    ports:
      - 8080:80
    restart: unless-stopped
```
### docker cli

```bash
docker run -d \
  --name=mikhmon \
  -p 8080:80 \
  --restart unless-stopped \
  animegasan/mikhmon:latest
```

---

### Web Interface

Open your web browser and visit the url `http://<IP_ADDRESS>:8080` to have access to the Mikhmon's web interface.

-   Default username: `mikhmon`
-   Default password: `1234`

**It's highly recommended to change the default access credentials on first start**.

---

## Packages
The package used by this image are:
- nginx
- php
- php81-fpm
- php81-gd
- php81-mbstring
- php81-mysqli
- php81-session
- supervisor

---

## Version
### Version 4 Beta
* **4-4.2.2:**
   - User Profile
      - Fix expired mode notice.
      - Expire date change to ```mmm/dd/yyyy hh:mm:ss N``` for notice and ```mmm/dd/yyyy hh:mm:ss X``` for remove.
* **4-4.2.1:**
   - User Profile
      - Lock Server change to Disable/Enable. So, the hotspot server will be adjusted to the hotspot server where the user is logged in.
* **4-4.2.0:**
   - Dashboard
      - Hotspot Active.
      - Hotspot Users.
      - Live Report.
      - Disable/Enable from settings.
      - App log.
      - Hotspot log.
   - Hotspot
      - Users (add & remove user).
      - User Profile (add remove profile).
        - Add Lock Server mode.
        - Lock the server hotspot after login.
      - Active (remove active user).
      - Host.
      - @global filter.
      - Generate Voucher.
    - Log
    - Report (global filter & download CSV and XLS).
    - Template editor.
    - New template format html. ([Here for template](https://laksa19.github.io/?mikhmon/v4/voucher))

### Version 3
* **3-3.20:** - Fixed typo script profile ```on-login```. (**Please update the user profile of Mikhmon, by opening each user profile, then Save.**)

---

## Credit
[Tim de Pater](https://github.com/TrafeX/docker-php-nginx), [Laksamadi Guko](https://github.com/laksa19), [Hilman Maulana](https://github.com/animegasan).

---
