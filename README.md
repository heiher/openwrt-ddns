# DDNS for OpenWrt

## 简介

本项目是 OpenWrt 上的 [Cloudflare][1] DDNS 客户端。

## 编译

- 从 OpenWrt 的 [SDK][2] 编译

    ```bash
    # 以 ar71xx 平台为例
    tar xfJ openwrt-sdk-18.06.4-ar71xx-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz
    cd openwrt-sdk-*
    
    # 获取 Makefile
    git clone https://github.com/heiher/openwrt-ddns.git package/ddns
    
    # 选中要编译的包 Network -> ddns
    make menuconfig
    
    # 开始编译
    make package/ddns/{clean,compile} V=s
    ```

[1]: https://www.cloudflare.com
[2]: https://openwrt.org/docs/guide-developer/obtain.firmware.sdk
