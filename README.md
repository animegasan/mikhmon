<h1 align="center">Mikhmon</h1>
<h3 align="center">The Free Software For Mikrotik Management</h3>

---

<p align="center">
<img alt="Logo Banner" src="https://raw.githubusercontent.com/animegasan/mikhmon/main/img/banner.png"/>
</p>

---

MikroTik Hotspot Monitor (Mikhmon) is a web-based application (MikroTik API PHP class) to assist MikroTik Hotspot management.
<br>
<br>
The image build on <a href="http://www.alpinelinux.org" target="_blank">Alpine Linux</a>, <a href="https://github.com/laksa19/mikhmonv3" target="_blank">Mikhmon by Laksamadi Guko</a> and <a href="https://github.com/TrafeX/docker-php-nginx" target="_blank">Dockerfile by Trafex</a>.

---

## Supported Architectures
We utilise the docker manifest for multi-platform awareness. Simply pulling ```animega/mikhmon:latest``` should retrieve the correct image for your arch, but you can also pull specific arch images via tags.

The architectures supported by this image are:

| Architecture | Available | Tag |
| :----: | :----: | ---- |
| x86-64 | ✅ | amd64-\<version tag\> |
| arm64 | ✅ | arm64v8-\<version tag\> |

---

## Packages
- nginx
- php
- php81-fpm
- php81-gd
- php81-mbstring
- php81-mysqli
- php81-session
- supervisor

## Credit
[Tim de Pater](https://github.com/TrafeX/docker-php-nginx), [Laksamadi Guko](https://github.com/laksa19), [Hilman Maulana](https://github.com/animegasan).
