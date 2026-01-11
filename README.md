# DDNS for OpenWrt

A [Cloudflare][1] Dynamic DNS Client for OpenWrt.

## Build

- Compile from OpenWrt [SDK][2]

    ```bash
    # x86_64
    tar xfJ openwrt-sdk-24.10.5-x86-64_gcc-13.3.0_musl.Linux-x86_64.tar.zst
    cd openwrt-sdk-*
    
    # Fetch Makefile
    git clone https://github.com/heiher/openwrt-ddns package/ddns
    
    # Select Network -> ddns
    make menuconfig
    
    # Compile
    make package/ddns/compile V=s
    ```

[1]: https://www.cloudflare.com
[2]: https://openwrt.org/docs/guide-developer/obtain.firmware.sdk
