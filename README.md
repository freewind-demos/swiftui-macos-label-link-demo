# SwiftUI macOS Label 和 Link

## 简介

演示 SwiftUI 中 Label（图标+文字）和 Link（超链接）的用法。

## 快速开始

```bash
cd swiftui-macos-label-link-demo
xcodegen generate
open SwiftUILabelLinkDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### Label

```swift
Label("标题", systemImage: "图标名")
Label("标题", systemImage: "star.fill")
    .foregroundColor(.yellow)
```

### Link

```swift
Link("访问网站", destination: URL(string: "https://...")!)

Link(destination: URL(string: "...")!) {
    HStack {
        Image(systemName: "link")
        Text("自定义样式")
    }
}
```

## 完整示例

```swift
// Label
Label("设置", systemImage: "gear")
    .font(.title)

// Link
Link("苹果官网", destination: URL(string: "https://apple.com")!)
```

## 完整讲解（中文）

### Label 用途

- 菜单项
- 列表项
- 工具栏按钮
- 任何需要图标+文字的地方

### Link 用途

- 网页链接
- 打开外部 URL
- 邮件链接 (mailto:)
- 电话链接 (tel:)
