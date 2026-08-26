| [上游源代码](https://github.com/P3TERX/Actions-OpenWrt)

<img width="768" src="https://github.com/openwrt/openwrt/blob/main/include/logo.png"/>

---

<div align="center">

<div id="toc">
<ul style="list-style: none">
<summary>
<h1>🚀 Actions-OpenWrt · 多设备固件云编译</h1>
</summary>
</ul>
</div>

</div>

## 📖 项目说明

<p align="center">
<a href="https://github.com/coolsnowwolf/lede"><img src="https://img.shields.io/badge/Lede-coolsnowwolf-ff69b4.svg?style=flat&logo=appveyor" alt="Lean"></a>
<a href="https://github.com/immortalwrt/immortalwrt"><img src="https://img.shields.io/badge/天灵-immortalwrt-ff69b4.svg?style=flat&logo=appveyor" alt="天灵"></a>
<a href="https://github.com/istoreos"><img src="https://img.shields.io/badge/istoreOS-istoreOS-ff69b4.svg?style=flat&logo=appveyor" alt="istoreOS"></a>
<a href="https://github.com/P3TERX/Actions-OpenWrt"><img src="https://img.shields.io/badge/OpenWrt-P3TERX-blueviolet.svg?style=flat&logo=appveyor" alt="P3TERX"></a>
</p>

- **固件来源**：基于 [immortalwrt OpenWrt](https://github.com/immortalwrt/immortalwrt)、[Lean's OpenWrt](https://github.com/coolsnowwolf/lede) 与 [istoreOS](https://github.com/istoreos) 源码
- **编译方式**：使用 GitHub Actions 拉取源码仓库进行云端自动编译
- **支持平台**：`X86-64` 与 `Newifi D2`，编译产物基于 Lean 与 immortalwrt 源码，并集成 **iStore**（软件商店）功能

## 📦 固件下载

| 平台 / 设备 | 编译状态 | 配置文件 | 固件下载 |
| :---: | :---: | :---: | :---: |
| [![X86-64 lean_6.12](https://img.shields.io/badge/x86_64-lean_6.12-32C955.svg?logo=openwrt)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/.github/workflows/AutoBuild-OpenWrt-Lean-X86-6.12.yml) | [![](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-Lean-X86-6.12.yml/badge.svg)](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-Lean-X86-6.12.yml) | [![配置文件](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/Config/lean/x86.config) | [![下载链接](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases?q=6.12&expanded=true) |
| [![X86-64 lean_6.18](https://img.shields.io/badge/x86_64-lean_6.18-32C955.svg?logo=openwrt)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/.github/workflows/AutoBuild-OpenWrt-Lean-X86-6.18.yml) | [![](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-Lean-X86-6.18.yml/badge.svg)](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-Lean-X86-6.18.yml) | [![配置文件](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/Config/lean/x86.config) | [![下载链接](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases?q=6.18&expanded=true) |
| [![X86-64 immortalwrt](https://img.shields.io/badge/X86_64-immortalwrt_master-32C955.svg?logo=openwrt)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/.github/workflows/AutoBuild-OpenWrt-Immortalwrt-X86.yml) | [![](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-Immortalwrt-X86.yml/badge.svg)](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-Immortalwrt-X86.yml) | [![配置文件](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/Config/immortalwrt/x86.config) | [![下载链接](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases?q=Immortalwrt-X86&expanded=true) |
| [![Newifi D2 immortalwrt](https://img.shields.io/badge/NewifiD2-immortalwrt_master-32C955.svg?logo=openwrt)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/.github/workflows/AutoBuild-OpenWrt-Immortalwrt-Newifi3.yml) | [![](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-Immortalwrt-Newifi3.yml/badge.svg)](https://github.com/sleel/AutoBuild-OpenWrt/actions/workflows/AutoBuild-OpenWrt-Immortalwrt-Newifi3.yml) | [![配置文件](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/Config/immortalwrt/newifi3.config) | [![下载链接](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/sleel/AutoBuild-OpenWrt/releases?q=Newifi3&expanded=true) |

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
