**中文** | [上游源代码](https://github.com/P3TERX/Actions-OpenWrt)

<div align="center">
<h1>Actions-OpenWrt(多设备固件云编译)</h1>

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/sleel/Actions-OpenWrt/blob/main/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/sleel/AutoBuild-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/sleel/AutoBuild-OpenWrt.svg?style=flat-square&label=Forks&logo=github)
![GitHub download](https://img.shields.io/github/downloads/sleel/AutoBuild-OpenWrt/total.svg?style=flat-square&label=Download&logo=github)
</div>


## 项目说明 [![](https://img.shields.io/badge/-项目基本介绍-FFFFFF.svg)](#项目说明-)
- 固件来源：[![coolsnowwolf](https://img.shields.io/badge/Lede-Lean-ff69b4.svg?style=flat&logo=appveyor)](https://github.com/coolsnowwolf/lede)[![istoreOS](https://img.shields.io/badge/istoreOS-istoreOS-ff69b4.svg?style=flat&logo=appveyor)](https://github.com/istoreos)[![P3TERX](https://img.shields.io/badge/OpenWrt-P3TERX-blueviolet.svg?style=flat&logo=appveyor)](https://github.com/P3TERX/Actions-OpenWrt) 
- 项目使用 Github Actions 拉取 [Lean](https://github.com/coolsnowwolf/lede) 和[istoreOS](https://github.com/istoreos) 的 Openwrt 源码仓库进行云编译
- 提供适配于NEWIFI D2、X86-64的 LEDE和istoreOS杂交OpenWrt 固件


## 固件下载 [![](https://img.shields.io/badge/-编译状态及下载链接-FFFFFF.svg)](#固件下载-)
点击下表中 [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?style=flat&logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases) 即可跳转到该设备固件下载页面
| 平台+设备名称 | 固件编译状态 | 配置文件 | 固件下载 |
| :-------------: | :-------------: | :-------------: | :-------------: |
| [![](https://img.shields.io/badge/NEWIFI-D2-32C955.svg?logo=openwrt)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/.github/workflows/AutoBuild-OpenWrt-NEWIFI3-5.4.yml) | [![](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-NEWIFI3-5.4.yml/badge.svg)](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-NEWIFI3-5.4.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/n3.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases?q=NEWIFI3&expanded=true) |
| [![](https://img.shields.io/badge/X86_64-istore_acc_6.6-32C955.svg?logo=openwrt)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/.github/workflows/AutoBuild-OpenWrt-X86-istore-acc-6.6.yml) | [![](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-X86-istore-acc-6.6.yml/badge.svg)](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-X86-istore-acc-6.6.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/istore-acc.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases?q=OpenWrt-istore-acc-6.6&expanded=true) |
| [![](https://img.shields.io/badge/X86_64-istore_acc_6.1-32C955.svg?logo=openwrt)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/.github/workflows/AutoBuild-OpenWrt-X86-istore-acc-6.1.yml) | [![](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-X86-istore-acc-6.1.yml/badge.svg)](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-X86-istore-acc-6.1.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/istore-acc.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases?q=OpenWrt-istore-acc-6.1&expanded=true) |

---------------------------
## 感谢

- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [immortalwrt OpenWrt](https://github.com/immortalwrt/immortalwrt)
- [unifreq/openwrt_packit](https://github.com/unifreq/openwrt_packit)
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [ophub/flippy-openwrt-actions](https://github.com/ophub/flippy-openwrt-actions)
- [breakings/OpenWrt](https://github.com/breakings/OpenWrt)

## License

[MIT](https://github.com/sleel/OpenWrt/blob/main/LICENSE) 

