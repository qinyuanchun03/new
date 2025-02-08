---
title: 硅基流动的API申请和运用实践
date: 2024-02-08
category: 文库
tags:
    - 文库
    - 分享
---

# 硅基流动API申请到运用

## 如何申请 API

1. 访问硅基流动的开发者平台。!btn[前往官网查看](https://cloud.siliconflow.cn/i/QsDivIDj)
2. 注册并登录账号。
3. 在控制台中找到 API 申请页面。
4. 在!btn[模型中心](https://cloud.siliconflow.cn/models)选择你需要的模型，复制它的名字，粘贴到插件中

## 如何调用模型

1. 获取 API 密钥。
2. 使用 API 密钥调用模型 API。
3. 示例代码：

```python
import requests

api_key = "your_api_key_here"
url = "https://api.siliconflow.com/models"

headers = {
    "Authorization": f"Bearer {api_key}"
}

response = requests.get(url, headers=headers)

if response.status_code == 200:
    print(response.json())
else:
    print(f"Error: {response.status_code}")
```

## 应用方向

!!! info "调用API示例"

    本文介绍两种应用方向，一种为编程，一种是聊天机器人   
    软件分别为Vscode和chatbox  
    官方API调度地址：https://api.siliconflow.cn/v1/

!!!

### chatbox
#### 如何将硅基流动的 API 引入 chatbox 进行聊天

1. **安装 chatbox**: 确保你已经安装并配置好 chatbox 软件。
2. **获取 API 密钥**: 按照前文中的步骤获取你的 API 密钥。
3. **配置 chatbox**: 打开 chatbox 的设置页面，找到 API 配置选项。  
    这一步要选择自定义模型提供方，复制上方API地址，粘贴你的APIkey
4. **输入 API 密钥**: 将获取到的 API 密钥粘贴到 chatbox 的 API 配置中。  
5. **选择模型**: 在下方选择复制你需要的模型，输入后点击加号即可添加，随后可以开始聊天。  

::: tabs
    === "对话"
        01-ai/Yi-1.5-6B-Chat
        01-ai/Yi-1.5-9B-Chat-16K
        deepseek-ai/DeepSeek-R1-Distill-Llama-8B
        deepseek-ai/DeepSeek-R1-Distill-Qwen-1.5B
        deepseek-ai/DeepSeek-R1-Distill-Qwen-7B
        google/gemma-2-9b-it
        internlm/internlm2_5-7b-chat
        meta-llama/Meta-Llama-3.1-8B-Instruct
        Qwen/Qwen2-1.5B-Instruct
        Qwen/Qwen2-7B-Instruct
        Qwen/Qwen2.5-7B-Instruct
        Qwen/Qwen2.5-Coder-7B-Instruct
        stabilityai/stable-diffusion-3-medium
        THUDM/chatglm3-6b
        THUDM/glm-4-9b-chat

    === "图片生成"
        black-forest-labs/FLUX.1-schnell
        deepseek-ai/Janus-Pro-7B
        stabilityai/stable-diffusion-2-1
        stabilityai/stable-diffusion-3-5-large
        stabilityai/stable-diffusion-xl-base-1.0

    === "重排序"
        BAAI/bge-reranker-v2-m3
        netease-youdao/bce-reranker-base_v1

    === "嵌入式"
        BAAI/bge-large-en-v1.5
        BAAI/bge-large-zh-v1.5
        BAAI/bge-m3
        netease-youdao/bce-embedding-base_v1

    === "语言"
        FunAudioLLM/SenseVoiceSmall
:::

6. **开始聊天**: 配置完成后，你就可以使用 chatbox 与模型进行对话了。

## 沉浸式翻译
### 如何将硅基流动的 API 引入沉浸式翻译插件

在进行操作之前，可结合官方API文档提供的办法：!btn[官方API教学](https://docs.siliconflow.cn/usercases/use-siliconcloud-in-immersive-translate)

1. **安装沉浸式翻译插件**: 确保你已经安装并配置好沉浸式翻译插件。
2. **获取 API 密钥**: 按照前文中的步骤获取你的 API 密钥。
3. **配置插件**: 打开沉浸式翻译插件的设置页面，找到 API 配置选项。
4. **输入 API 密钥**: 将获取到的 API 密钥粘贴到插件的 API 配置中。
5. **选择模型**: 在插件的设置中选择你需要的翻译模型。
6. **开始翻译**: 配置完成后，你就可以使用插件实时翻译页面内容了。

### 推荐网站

以下是一些推荐的英文网站，供您测试翻译效果：

- [BBC News](https://www.bbc.com/news)
- [The New York Times](https://www.nytimes.com)
- [CNN](https://www.cnn.com)
- [The Guardian](https://www.theguardian.com/international)
- [National Geographic](https://www.nationalgeographic.com)

通过这些网站，您可以测试沉浸式翻译插件的实时翻译功能，体验不同内容的翻译效果。


