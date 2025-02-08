# 江湖笔者的文库项目

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![VuePress](https://img.shields.io/badge/vuepress-2.x-brightgreen.svg)](https://v2.vuepress.vuejs.org/)

## 项目介绍

这是一个基于 VuePress 2.x 构建的个人知识文库项目，包含技术文档、工具推荐和生活随笔等内容。

## 主要特性

- 📚 完整的文档体系
- 🔍 全文搜索支持
- 📱 移动端适配
- 🎨 自定义主题
- 🏷️ 文章标签分类

## 目录结构

```
new/
├── content/           # 内容目录
│   ├── articles/     # 文章存放
│   └── guide/        # 指南文档
├── .vuepress/        # VuePress 配置
├── public/           # 静态资源
└── package.json      # 项目配置文件
```

## 快速开始

1. 克隆项目
```bash
git clone https://github.com/yourusername/your-repo.git
cd your-repo
```

2. 安装依赖
```bash
npm install
# 或者使用 yarn
yarn install
```

3. 本地开发
```bash
npm run dev
# 或者使用 yarn
yarn dev
```

4. 构建项目
```bash
npm run build
# 或者使用 yarn
yarn build
```

## 文档编写规范

所有文档都需要包含以下 front matter：

```yaml
---
title: 文档标题
date: 发布日期
category: 分类名称
tags:
    - 标签1
    - 标签2
---
```

## 贡献指南

1. Fork 本仓库
2. 创建新的分支：`git checkout -b feature/your-feature`
3. 提交变更：`git commit -am 'Add new feature'`
4. 推送到分支：`git push origin feature/your-feature`
5. 提交 Pull Request

## 许可证

本项目采用 [MIT 许可证](LICENSE)

## 联系方式

- 作者：江湖笔者
- 博客：[作者博客地址]
- GitHub：[GitHub 地址]

## 致谢

感谢所有对本项目做出贡献的开发者们！