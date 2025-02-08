---
title: 目录结构
author: 江湖笔者
date: 2024-02-08
category: 指南
tags:
  - 入门
  - 结构
---

# 目录结构

## 文档组织方式

```
├── docs/                # 文档中心
│   ├── tech/           # 技术文档
│   ├── life/           # 生活随笔
│   └── books/          # 书籍分享
├── guide/              # 使用指南
├── tutorials/          # 开发教程
└── tools/              # 工具推荐
```

## 文档规范

每个 Markdown 文件都需要包含以下 front matter：

```yaml
---
title: 文档标题
author: 作者名称
date: 发布日期
category: 分类
tags:
  - 标签1
  - 标签2
---
```

## 写作建议

1. 使用清晰的标题层级
2. 添加适当的代码示例
3. 配图说明复杂概念
4. 保持文档结构统一