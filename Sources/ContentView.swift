import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 30) {
                // Label - 图标+文字组合
                Text("Label - 图标+文字")
                    .font(.headline)

                VStack(alignment: .leading, spacing: 15) {
                    Label("首页", systemImage: "house.fill")
                    Label("设置", systemImage: "gearshape.fill")
                    Label("用户", systemImage: "person.fill")
                    Label("消息", systemImage: "envelope.fill")
                }

                Divider()

                // Label 样式变体
                Text("Label 样式")
                    .font(.headline)

                VStack(alignment: .leading, spacing: 15) {
                    Label("默认样式", systemImage: "circle")
                    Label("标题样式", systemImage: "circle.fill")
                        .font(.title3)
                    Label("大号图标", systemImage: "star.fill")
                        .font(.title)
                        .foregroundColor(.orange)
                    Label("自定义颜色", systemImage: "heart.fill")
                        .foregroundColor(.red)
                }

                Divider()

                // Link - 超链接
                Text("Link - 超链接")
                    .font(.headline)

                VStack(alignment: .leading, spacing: 10) {
                    Link("访问 Apple 官网", destination: URL(string: "https://www.apple.com")!)

                    Link(destination: URL(string: "https://github.com")!) {
                        HStack {
                            Image(systemName: "link.circle.fill")
                            Text("访问 GitHub")
                        }
                    }
                }

                Divider()

                // Label 在 Button/Menu 中的使用
                Text("Label 结合 Button")
                    .font(.headline)

                VStack(alignment: .leading, spacing: 10) {
                    Button {
                        print("新建")
                    } label: {
                        Label("新建文件", systemImage: "doc.badge.plus")
                    }

                    Button {
                        print("保存")
                    } label: {
                        Label("保存", systemImage: "square.and.arrow.down")
                    }
                    .buttonStyle(.borderedProminent)

                    Button(role: .destructive) {
                        print("删除")
                    } label: {
                        Label("删除", systemImage: "trash")
                    }
                }

                Divider()

                // Menu 使用 Label
                Text("Label 结合 Menu")
                    .font(.headline)

                Menu {
                    Button("新建") { }
                    Button("打开") { }
                    Divider()
                    Button("保存") { }
                } label: {
                    Label("文件菜单", systemImage: "folder")
                }
                .menuStyle(.borderedButton)
            }
            .padding(30)
        }
    }
}
