# 开发者文档

欢迎来到 ArcBlock 平台的技术深度解析。本文档专为开发者、架构师以及任何需要了解 ArcBlock 内部工作原理的人士而设计，内容涵盖从其基础设计原则到核心组件的方方面面。读完本指南后，您将对系统的架构、协议以及驱动整个生态系统的服务有一个全面的了解。

本指南详细探讨了 ArcBlock 平台的技术层面，旨在为您提供构建复杂的去中心化应用所需的知识。我们将深入研究系统的架构、主要组件以及驱动网络的通证经济。

如需完整的技术概览，请浏览以下部分：

```d2
direction: down

ArcBlock-Platform: {
  label: "ArcBlock 平台"
  shape: rectangle

  System-Architecture: {
    label: "系统架构"
    shape: rectangle
    Cloud-Nodes: {
      label: "云节点"
    }
  }

  Core-Components: {
    label: "核心组件"
    shape: rectangle
    Open-Chain-Access-Protocol: {
      label: "开放链访问协议"
    }
    Blocklets: {}
    Decentralized-Pub-Sub-Gateway: {
      label: "去中心化发布/订阅网关"
    }
  }

  Token-Economy-Services: {
    label: "通证经济与服务"
    shape: rectangle
    ArcBlock-Token-ABT: {
      label: "ArcBlock 通证 (ABT)"
    }
    Miners: {}
    Application-Tokens: {
      label: "应用通证"
    }
  }
}

```

<x-cards data-columns="3">
  <x-card data-title="系统架构" data-icon="lucide:milestone" data-href="/developer-docs/architecture">
    了解构成 ArcBlock 基础的设计原则、高层架构以及云节点的创新概念。
  </x-card>
  <x-card data-title="核心组件" data-icon="lucide:boxes" data-href="/developer-docs/core-components">
    深入了解 ArcBlock 的关键技术组件，包括开放链访问协议、Blocklet 和去中心化发布/订阅网关。
  </x-card>
  <x-card data-title="通证经济与服务" data-icon="lucide:coins" data-href="/developer-docs/token-services">
    理解 ArcBlock 通证（ABT）的技术实现、矿工的角色，以及如何创建您自己的应用通证。
  </x-card>
</x-cards>

## 总结

本文档是 ArcBlock 平台的权威技术参考。其结构旨在提供一个从高层架构到每个组件具体细节的逻辑递进。通过阅读这些材料，您将获得在开发项目中充分利用 ArcBlock 强大功能所需的专业知识。

为进一步加深您的理解，我们建议您继续阅读[系统架构](./developer-docs-architecture.md)部分。