# shadowrocket-docker

[![Docker Build Status](https://img.shields.io/docker/build/alibo/shadowrocket-docker.svg)](https://hub.docker.com/r/alibo/shadowrocket-docker/)

A Docker image for [ShadowsocksR (ShadowRocket, SSR)](https://github.com/shadowsocksrr/shadowsocksr)


## Download from Docker Hub

```bash
docker pull alibo/shadowrocket
```


## Usage

```bash
docker run -d --restart=always \
  -e "SSR_PORT=4001" \
  -e "SSR_PASSWORD=12345678" \
  -e "SSR_METHOD=chacha20-ietf" \
  -e "SSR_OBFS=http_post_compatible" \
  -p 443:443 \
  -p 443:443/udp \
  alibo/shadowrocket
```

More information about options: https://github.com/shadowsocksr-rm/shadowsocks-rss/blob/master/ssr.md


## Notice

Currently, you cannot change the `protocol`, you should set the `protocol` to `auth_aes128_md5` in the client app.


## Clients

- [Mac/OSX](https://github.com/qinyuhang/ShadowsocksX-NG-R/releases)
- [Windows](https://github.com/shadowsocksrr/shadowsocksr-csharp/releases)
- [Android](https://github.com/shadowsocksrr/shadowsocksr-android/releases)
- [iOS - Potatso Lite](https://itunes.apple.com/app/potatso-lite/id1239860606?mt=8) | [Shadowrocket](https://itunes.apple.com/us/app/shadowrocket/id932747118)
- [OpenWrt](https://github.com/shadowsocks/openwrt-shadowsocks)


## Credits

- [Shadowsocks](https://github.com/shadowsocks)
- [ShadowsocksR](https://github.com/shadowsocksrr/shadowsocksr)
- [How to Setup a Fast Shadowsocks Server on Vultr VPS](https://www.tipsforchina.com/how-to-setup-a-fast-shadowsocks-server-on-vultr-vps-the-easy-way.html)
- [hangim/shadowsocks-docker](https://github.com/hangim/shadowsocks-docker)
- [@cenobar](https://twitter.com/cenobar/)



## License
MIT
