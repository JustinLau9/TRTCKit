# TRTCKit

[![Swift](https://img.shields.io/badge/Swift-5.5+-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS%20%7C%20macOS%20%7C%20visionOS-blue)](https://developer.apple.com/ios/)
[![SPM](https://img.shields.io/badge/SPM-Compatible-brightgreen)](https://swift.org/package-manager/)
[![License](https://img.shields.io/badge/license-MIT-lightgrey)](LICENSE)

**TRTCKit** 是一个基于腾讯云 [TRTC SDK](https://cloud.tencent.com/product/trtc) 的轻量级 Swift 封装库，专为**通过 Swift Package Manager 集成**而设计。它简化了 TRTC 的接入流程，提供更 Swift 化的 API，帮助您快速在 iOS、macOS 等苹果平台上实现音视频通话功能。

## ✨ 特性

- **纯 Swift 实现**：完全使用 Swift 编写，API 更符合 Swift 语言习惯。
- **SPM 原生支持**：无需手动下载或配置 CocoaPods，直接通过 Xcode 的 Swift Package Manager 集成。
- **简单易用**：封装了 TRTC 的核心初始化、进房、通话控制等操作，几行代码即可开启音视频通话。
- **可自定义 UI**：内置默认通话界面，同时也支持您传入自定义视图，满足个性化需求。
- **跨苹果平台**：支持 iOS、macOS、visionOS 等（根据您的实际支持情况调整）。
- **持续更新**：紧跟 TRTC 官方 SDK 版本，确保兼容性和新功能。

## 📸 效果预览

| 主界面 | 通话界面 |
| :---: | :---: |
| ![screenshot1](link_to_your_screenshot1) | ![screenshot2](link_to_your_screenshot2) |

*（请替换为您的应用截图）*

## 🔧 环境要求

- iOS 13.0+ / macOS 10.15+ / visionOS 1.0+（根据实际最低版本填写）
- Xcode 14.0+
- Swift 5.5+

## 📦 集成方式

### 通过 Swift Package Manager 集成

#### 方法一：使用 Xcode 添加（推荐）

1. 在 Xcode 中打开您的项目，选择 **File → Add Package Dependencies...**。
2. 在弹出的窗口中输入仓库地址：
