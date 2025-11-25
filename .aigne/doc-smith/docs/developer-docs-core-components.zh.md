# 核心组件

要构建功能强大的去中心化应用，理解驱动 ArcBlock 平台的基础技术至关重要。本节对构成我们生态系统的关键组件进行了技术概述，为开发者清晰地描绘了系统内部的工作原理，从区块链互操作性到无服务器计算。

本文档是一个高层级的总结。如需全面探索每个组件，请参阅详细的子章节。

## 核心组件概述

ArcBlock 平台是一个由几个关键技术支柱组成的复杂生态系统。每个组件都被设计成模块化且功能强大，它们协同工作，以提供无缝的开发和用户体验。下图说明了这些核心组件如何交互：

```d2
direction: down

Client-Apps: {
  label: "客户端应用\n(移动/Web)"
  shape: rectangle
}

Gateway: {
  label: "去中心化\n发布/订阅网关"
  shape: rectangle
}

Blocklet: {
  label: "Blocklet\n(无服务器计算)"
  icon: "https://www.arcblock.io/image-bin/uploads/eb1cf5d60cd85c42362920c49e3768cb.svg"
}

OCA: {
  label: "开放链访问\n协议"
  shape: rectangle
}

Consensus: {
  label: "Algorand 共识"
  shape: rectangle
}

Blockchains: {
  label: "外部区块链"
  shape: rectangle
  style: {
    stroke-dash: 4
  }
  Bitcoin: {
    label: "比特币"
  }
  Ethereum: {
    label: "以太坊"
  }
  Others: {
    label: "..."
  }
}

Client-Apps <-> Gateway: "实时通信"
Gateway <-> Blocklet: "安全消息传递"
Blocklet -> OCA
Blocklet -> Consensus
OCA -> Blockchains: "统一接口"

```

以下是这些核心部分的概述。

<x-cards data-columns="2">
  <x-card data-title="开放链访问" data-icon="lucide:link" data-href="/developer-docs/core-components/open-chain-access">
    一种协议，使应用程序能通过统一接口与各种区块链技术（如比特币和以太坊）协同工作。
  </x-card>
  <x-card data-title="Blocklet" data-icon="lucide:server" data-href="/developer-docs/core-components/blocklet">
    一种用于运行应用逻辑的无服务器计算架构，作为连接区块链和用户界面的中心枢纽。
  </x-card>
  <x-card data-title="去中心化发布/订阅网关" data-icon="lucide:network" data-href="/developer-docs/core-components/gateway">
    一个分布式消息系统，促进客户端应用和 Blocklet 之间安全、实时的通信。
  </x-card>
  <x-card data-title="Algorand 共识" data-icon="lucide:shield-check" data-href="/developer-docs/core-components/algorand">
    为实现 ArcBlock 生态系统内高性能和安全的交易验证而采用的共识算法。
  </x-card>
</x-cards>

## 总结

核心组件——开放链访问协议、Blocklet、去中心化发布/订阅网关和 Algorand——是 ArcBlock 平台的引擎。它们提供了构建可扩展且稳健的去中心化应用所需的抽象、计算能力、通信渠道和共识机制。

要深入了解每个组件的架构和实现，请浏览上面链接的各个部分。要理解这些组件如何融入整个系统，请参阅[系统架构](./developer-docs-architecture.md)文档。