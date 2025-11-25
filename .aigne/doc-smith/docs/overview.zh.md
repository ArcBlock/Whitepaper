# 概述

本文档对 ArcBlock 平台进行了全面的技术概述，详细介绍了其目标、范围和核心架构。旨在引导非技术和技术读者理解该生态系统的复杂性，确保每个人都能找到所需的信息。

## 简介

ArcBlock 平台是一个用于构建和部署去中心化应用（dApps）的区块链生态系统。本白皮书对该平台的主要组件和设计原则进行了高层次的技术总结。本文假设读者对云计算、dApps 和区块链技术有基础的了解。

本文中的信息仅供参考。随着 ArcBlock 为满足市场需求而不断发展，文中所述的产品和架构设计可能会发生变化。我们致力于保持本文档的更新，以反映平台的最新状态。

## 本文适合哪些读者？

为满足不同受众的需求，本白皮书分为不同的路径。请选择最符合您的兴趣和技术背景的路径。

<x-cards data-columns="2">
  <x-card data-title="用户指南" data-icon="lucide:users" data-href="/user-guide">
    适用于商业领袖、产品经理以及任何对 ArcBlock 的实际应用和优势感兴趣，而无需深入了解技术细节的人士。
  </x-card>
  <x-card data-title="开发者文档" data-icon="lucide:code" data-href="/developer-docs">
    适用于需要详细了解 ArcBlock 架构、核心组件和协议的软件工程师、系统架构师和开发者。
  </x-card>
</x-cards>

## 文档结构

本白皮书对 ArcBlock 生态系统进行了结构化的探索。下图展示了主要章节之间的关系，引导您浏览可用的内容路径。以下是主要章节的摘要，以帮助您导航内容。

```d2
direction: down

ArcBlock-Technical-Whitepaper: {
  label: "ArcBlock 技术白皮书"
  shape: rectangle
}

User-Guide: {
  label: "用户指南\n（非技术路径）"
  shape: rectangle
}

Developer-Documentation: {
  label: "开发者文档\n（技术路径）"
  shape: rectangle
}

Archive: {
  label: "存档"
  shape: rectangle
}

ArcBlock-Technical-Whitepaper -> User-Guide
ArcBlock-Technical-Whitepaper -> Developer-Documentation
ArcBlock-Technical-Whitepaper -> Archive

```

| 章节 | 描述 |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| **用户指南** | 用简单的语言解释 ArcBlock 的核心概念，重点关注其解决的问题以及为用户和企业带来的好处。 |
| **开发者文档** | 深入技术层面探讨 ArcBlock 平台，涵盖系统架构、核心组件和底层协议。 |
| **存档** | 包含白皮书的历史版本以供参考，包括在通证销售活动期间发布的原始版本。 |

## 相关文档

如需更多信息，请参阅 ArcBlock 官方资源和在首次代币发行（ICO）期间发布的原始白皮书。

<x-cards data-columns="2">
  <x-card data-title="ArcBlock 官网" data-icon="lucide:globe" data-href="https://arcblock.io">
    访问官网，了解最新新闻、更新和产品信息。
  </x-card>
  <x-card data-title="ICO 版本白皮书" data-icon="lucide:file-text" data-href="https://www.arcblock.io/file/whitepaper/WhitePaperEnV2_en-US.pdf">
    查阅在通证销售活动期间发布的原始白皮书，以了解历史背景。
  </x-card>
</x-cards>

## 总结

本概述是 ArcBlock 技术白皮书的入口。通过为不同受众提供不同的路径和清晰的结构，它旨在为理解 ArcBlock 平台提供一份精确而实用的指南。我们鼓励您继续阅读最符合您需求的部分。

如需非技术性介绍，请参阅[用户指南](./user-guide.md)。如需深入的技术细节，请继续阅读[开发者文档](./developer-docs.md)。