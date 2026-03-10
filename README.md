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
2. 在弹出的窗口中输入仓库地址：https://github.com/JustinLau9/TRTCKit
3. 选择您需要的版本规则（建议使用 **Up to Next Major** 以自动获取兼容更新），然后点击 **Add Package**。
4. 选择要添加到的 target，完成集成。

#### 方法二：通过 `Package.swift` 文件添加

如果您在管理多个包依赖，可以在项目的 `Package.swift` 文件中添加：

```swift
dependencies: [
 .package(url: "https://github.com/JustinLau9/TRTCKit", from: "1.0.0")
]

然后在您的 target 中添加 TRTCKit 作为依赖：

swift
.target(
    name: "YourTarget",
    dependencies: ["TRTCKit"]
)
🚀 快速开始
1. 获取腾讯云 TRTC 密钥
在开始前，您需要拥有腾讯云账号并创建 TRTC 应用，获取 SDKAppID 和 密钥。详情请参考 TRTC 官方文档。

2. 配置权限
在您的应用 Info.plist 中添加相机和麦克风权限描述：

xml
<key>NSCameraUsageDescription</key>
<string>需要您的相机权限以进行视频通话</string>
<key>NSMicrophoneUsageDescription</key>
<string>需要您的麦克风权限以进行语音通话</string>
3. 初始化 TRTCKit
在合适的位置（如 AppDelegate 或初始化管理器）调用初始化方法：

swift
import TRTCKit

// 建议使用单例管理
let trtcManager = TRTCKit.shared

// 配置 SDKAppID 和用户信息（userSig 需从您的服务器获取）
trtcManager.setup(sdkAppID: 123456789, 
                  userID: "当前用户ID", 
                  userSig: "从服务器获取的用户签名") { result in
    switch result {
    case .success:
        print("初始化成功")
    case .failure(let error):
        print("初始化失败: \(error.localizedDescription)")
    }
}
4. 发起或加入通话
发起一对一通话：

swift
trtcManager.startCall(roomID: 12345, 
                      remoteUserIDs: ["对方用户ID1"]) { result in
    // 处理结果
}
加入已存在的房间：

swift
trtcManager.joinRoom(roomID: 12345) { result in
    // 处理结果
}
5. 通话控制
swift
// 开启/关闭本地摄像头
trtcManager.enableLocalVideo(true)

// 静音/取消静音
trtcManager.muteLocalAudio(true)

// 切换摄像头
trtcManager.switchCamera()

// 挂断
trtcManager.hangup()
详细的 API 说明请参考 Wiki 或源代码注释。

📖 详细文档
API 参考文档

常见问题

更新日志

🤝 贡献
欢迎任何形式的贡献！如果您有好的建议或发现了 bug，请通过 Issues 提交。如果您想贡献代码，请阅读 贡献指南。

📄 许可证
TRTCKit 基于 MIT 许可证开源。详见 LICENSE 文件。

📬 联系方式
作者：JustinLau

邮箱：justinlau161@gmail.com

项目主页：https://github.com/JustinLau9/TRTCKit

注意：本项目是对腾讯云 TRTC SDK 的封装，使用前请确保您已阅读并同意 TRTC 服务条款。

text

### 使用说明
1. **替换占位内容**：请将方括号 `[]` 内的提示文字替换为实际信息，如截图链接、作者名、邮箱、最低支持版本等。
2. **调整代码示例**：根据您的实际 API 设计修改示例代码中的方法名和参数，确保与您的库完全一致。
3. **补充 Wiki/文档**：如果您有更详细的文档，可以创建 Wiki 页面或文档网站，并在对应位置添加链接。
4. **完善许可证文件**：确保仓库根目录有 `LICENSE` 文件，并填写正确的许可证类型（如 MIT）。

如果您能提供更多关于 TRTCKit 的具体 API 或功能描述，我可以帮您进一步完善示例代码部分。
