**中文** | [上游源代码](https://github.com/P3TERX/Actions-OpenWrt)

<div align="center">

<h1>🚀 Actions-OpenWrt</h1>
<h3>多设备固件云编译</h3>

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/sleel/Actions-OpenWrt/blob/main/LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/sleel/AutoBuild-OpenWrt.svg?style=flat-square&label=Stars&logo=github)](https://github.com/sleel/AutoBuild-OpenWrt/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/sleel/AutoBuild-OpenWrt.svg?style=flat-square&label=Forks&logo=github)](https://github.com/sleel/AutoBuild-OpenWrt/network/members)
[![GitHub Download](https://img.shields.io/github/downloads/sleel/AutoBuild-OpenWrt/total.svg?style=flat-square&label=Download&logo=github)](https://github.com/sleel/AutoBuild-OpenWrt/releases)

</div>

---

## 📖 项目说明

<p>
<a href="https://github.com/immortalwrt/immortalwrt"><img src="https://img.shields.io/badge/immortalwrt-immortalwrt-ff69b4.svg?style=flat&logo=appveyor" alt="1715173329"></a>
<a href="https://github.com/coolsnowwolf/lede"><img src="https://img.shields.io/badge/Lede-coolsnowwolf-ff69b4.svg?style=flat&logo=appveyor" alt="Lean"></a>
<a href="https://github.com/istoreos"><img src="https://img.shields.io/badge/istoreOS-istoreOS-ff69b4.svg?style=flat&logo=appveyor" alt="istoreOS"></a>
<a href="https://github.com/P3TERX/Actions-OpenWrt"><img src="https://img.shields.io/badge/OpenWrt-P3TERX-blueviolet.svg?style=flat&logo=appveyor" alt="P3TERX"></a>
</p>

- **固件来源**：基于 [immortalwrt OpenWrt](https://github.com/immortalwrt/immortalwrt) [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) 与 [istoreOS](https://github.com/istoreos) 源码
- **编译方式**：使用 GitHub Actions 拉取源码仓库进行云端自动编译
- **支持平台**：`Newifi D2` 与 `X86-64`，编译产物基于 immortalwrt 与 Lean 源码，并集成 **iStore**（软件商店）功能

## 📦 固件下载

> 点击下表中的下载徽章 [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?style=flat&logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases) 即可跳转至对应设备的固件下载页面。

| 平台 / 设备 | 编译状态 | 配置文件 | 固件下载 |
| :---: | :---: | :---: | :---: |
| [![](https://img.shields.io/badge/NewifiD2-immortalwrt-32C955.svg?logo=openwrt)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/.github/workflows/AutoBuild-OpenWrt-Newifi3.yml) | [![](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-Newifi3.yml/badge.svg)](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-Newifi3.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/Newifi3.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases?q=Newifi3&expanded=true) |
| [![](https://img.shields.io/badge/luci_2512-istore_acc_6.12-32C955.svg?logo=openwrt)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/.github/workflows/AutoBuild-OpenWrt-X86-6.12.yml) | [![](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-X86-6.12.yml/badge.svg)](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-X86-6.12.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/istore.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases?q=6.12&expanded=true) |
| [![](https://img.shields.io/badge/luci_2512-istore_acc_6.18-32C955.svg?logo=openwrt)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/.github/workflows/AutoBuild-OpenWrt-X86-6.18.yml) | [![](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-X86-6.18.yml/badge.svg)](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-X86-6.18.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/istore.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases?q=6.18&expanded=true) |

## 🙏 感谢

本项目的实现离不开以下开源项目的支持：

- [OpenWrt](https://github.com/openwrt/openwrt)
- [iStore](https://github.com/linkease/istore)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [immortalwrt OpenWrt](https://github.com/immortalwrt/immortalwrt)
- [unifreq/openwrt_packit](https://github.com/unifreq/openwrt_packit)
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [ophub/flippy-openwrt-actions](https://github.com/ophub/flippy-openwrt-actions)
- [breakings/OpenWrt](https://github.com/breakings/OpenWrt)

## 📄 License

本项目基于 [MIT](https://github.com/sleel/OpenWrt/blob/main/LICENSE) 协议开源。
</content>
