# Actions-OpenWrt （多设备固件云编译）  
**基于 GitHub Actions 的 OpenWrt 云编译整合模板 & 设备定制脚本**  

中文说明 — 上游源码 / 模板参考：P3TERX / Lean / iStore。  
（注意：P3TERX 的 Actions-OpenWrt 已被归档，请参照仓库内脚本并按需更新。）:contentReference[oaicite:13]{index=13}

---

[![License](https://img.shields.io/github/license/sleel/AutoBuild-OpenWrt.svg?style=flat-square)](https://github.com/sleel/AutoBuild-OpenWrt/blob/main/LICENSE)
[![Releases](https://img.shields.io/github/v/release/sleel/AutoBuild-OpenWrt?style=flat-square)](https://github.com/sleel/AutoBuild-OpenWrt/releases)
[![Stars](https://img.shields.io/github/stars/sleel/AutoBuild-OpenWrt.svg?style=flat-square)](https://github.com/sleel/AutoBuild-OpenWrt/stargazers)

## 目标
- 用 GitHub Actions 自动化编译多个设备的 OpenWrt 固件。  
- 提供可复用的 `config`、`diy` 自定义脚本与固件打包流程，方便一键触发编译与下载安装。

## 当前支持（仓库文件说明）
> 主仓库（源代码、脚本）位于：`https://github.com/sleel/AutoBuild-OpenWrt`。 :contentReference[oaicite:14]{index=14}

主要配置 / 脚本（仓库根目录）：
- `NEWIFI3.config` — NEWIFI D2 / NEWIFI3 编译配置（用于触发 NEWIFI 平台编译）。:contentReference[oaicite:15]{index=15}  
- `NEWIFI3.sh` — NEWIFI 设备定制脚本（可在构建流程中调用）。:contentReference[oaicite:16]{index=16}  
- `istore-1806.config`、`istore-2410.config` — iStore / X86 的配置样例。:contentReference[oaicite:17]{index=17}  
- 其它：若干 `diy-*.sh` 脚本（构建中注入/替换逻辑）以及 `test.config`（样例）。

> 构建产物（固件）请从 Releases 下载（当 GitHub Actions 构建完成时，作者会把固件发布到 Releases）。:contentReference[oaicite:18]{index=18}

## 快速开始（最短路径）
1. 在仓库根目录放入你的 `.config`（或复制已有的 `NEWIFI3.config` 并修改）。  
2. 启用/触发对应的 Workflow（或直接 push 触发构建）。  
3. 构建完毕后，从 **Releases** 页面下载构建产物。:contentReference[oaicite:19]{index=19}

## 文件/工作流映射（建议）
- 若你想为某个设备添加自动构建：  
  1. 新增 `*.config` 到仓库根；  
  2. 在 `.github/workflows/` 内添加或复制对应的 workflow yaml（以模板为准）；  
  3. workflow 会在检测到配置文件 push 时触发构建，构建结束请检查 Actions/Artifacts 或 Releases。

## 我对 README 做的修复（概要）
- 修复了 README 中的 **配置文件名** 指向（如 `n3.config` → `NEWIFI3.config`）以匹配仓库实际文件。:contentReference[oaicite:20]{index=20}  
- 用更简练的说明替代过多 badge 的直接下载跳转（避免动态 badge 因 GitHub 渲染而失效）。  
- 增加「快速开始」与「文件映射」说明，方便第一次上手或迁移模板的用户。

## 链接检查与之后建议
- 我随 README 一并提供了 `link_check.py`（一个简单的 URL 检测脚本），用于扫描 README 并逐条检测 URL 状态码（方便后续维护）。  
- 建议：把常用 device `.config` 命名规整（如 `device-<name>.config`），并在 README 中维护一张表格（设备 → config → workflow），便于 CI 自动化与用户快速使用。

---

## 致谢
- OpenWrt / Lean / iStore / P3TERX 等开源项目贡献者。:contentReference[oaicite:21]{index=21}

---
