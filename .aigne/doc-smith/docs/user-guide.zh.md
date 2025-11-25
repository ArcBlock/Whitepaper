# 用户指南

你是否想过，为什么区块链技术尽管被大肆宣传，却不像互联网那样易于使用或普及？本指南用简单的术语解释了 ArcBlock 背后的核心理念。你将了解到阻碍区块链发展的常见问题，以及 ArcBlock 如何为从个人到大型企业的每个人提供一个清晰、用户友好的解决方案。

ArcBlock 是一个旨在使构建和使用去中心化应用（dApps）变得简单、可扩展和易于访问的平台。它解决了减缓主流区块链普及的关键挑战，例如性能不佳、成本高昂和用户体验混乱。

下图提供了 ArcBlock 生态系统及其核心组件的高层概览。
```d2
direction: down

Developers: {
  shape: c4-person
}

Users: {
  shape: c4-person
}

ArcBlock-Ecosystem: {
  label: "ArcBlock 生态系统"
  shape: rectangle

  ArcBlock-Platform: {
    label: "ArcBlock 平台"
    shape: rectangle
    style.fill: "#f0f9ff"

    Cloud-Computing: {
      label: "云计算"
    }

    Multi-Chain-Architecture: {
      label: "多链架构"
    }

    ABT: {
      label: "ArcBlock 通证 (ABT)"
      style.fill: "#fffbe6"
    }
  }

  dApps: {
    label: "去中心化应用 (dApps)"
    shape: rectangle
    style.fill: "#f6ffed"
  }
}

Developers -> ArcBlock-Ecosystem.ArcBlock-Platform: "构建于"
ArcBlock-Ecosystem.ArcBlock-Platform -> ArcBlock-Ecosystem.dApps: "承载"
Users -> ArcBlock-Ecosystem.dApps: "使用"
ArcBlock-Ecosystem.ArcBlock-Platform.ABT -> ArcBlock-Ecosystem.ArcBlock-Platform: "驱动"

```

本指南提供了对 ArcBlock 生态系统的非技术性概述。如需更深入的技术探讨，请参阅我们的[开发者文档](./developer-docs.md)。

---

### 核心概念

要理解 ArcBlock 的独特之处，了解它旨在克服的核心挑战以及它提供的创新解决方案会很有帮助。

<x-cards data-columns="3">
  <x-card data-title="存在的问题" data-icon="lucide:server-off" data-href="/user-guide/problems">
    了解当今区块链面临的普遍挑战，包括性能缓慢、成本高昂以及对日常用户而言过于复杂。
  </x-card>
  <x-card data-title="ArcBlock 的解决方案" data-icon="lucide:solution" data-href="/user-guide/solution">
    探索 ArcBlock 的独特架构如何解决这些问题，使区块链应用更快、更便宜、更易于使用。
  </x-card>
  <x-card data-title="通证经济概念" data-icon="lucide:coins" data-href="/user-guide/token-economy">
    高层概览 ArcBlock 通证（ABT）及其如何驱动一个由开发者和用户组成的自给自足的生态系统。
  </x-card>
</x-cards>

### 向区块链 3.0 的演进

ArcBlock 代表了区块链技术演进中合乎逻辑的下一步，通常被称为区块链 3.0。它借鉴了早期平台的经验教训，创建了一个更强大、更灵活、更以用户为中心的生态系统。

![走向区块链 3.0 的路线图](../../../src/content/latest/images/RoadmapTowardBlockcahin3.0.png)

*   **区块链 1.0（例如，比特币）：** 引入了去中心化数字账本的概念，主要用于点对点货币交易。
*   **区块链 2.0（例如，以太坊）：** 在此基础上引入了智能合约，实现了可编程逻辑和首批去中心化应用的创建。然而，它在性能和用户体验方面仍面临限制。
*   **区块链 3.0（ArcBlock）：** 专注于解决现实世界的普及问题。通过集成云计算和灵活的多链架构，ArcBlock 提供了将区块链应用带给主流受众所需的性能、用户友好性和成本效益。

### 总结

ArcBlock 不仅仅是一项技术；它是一个为新型通证经济设计的完整生态系统。通过优先考虑用户体验、利用现代云基础设施并坚持开放标准，ArcBlock 提供了一个平台，让开发者可以构建下一代去中心化应用，而用户则可以无摩擦地享受它们。

要了解更多关于 ArcBlock 解决的具体问题，请继续阅读下一节。

<br/>
<br/>

[存在的问题](./user-guide-problems.md)