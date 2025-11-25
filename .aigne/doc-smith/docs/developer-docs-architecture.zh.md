对于希望在该平台上进行构建的开发者来说，理解 ArcBlock 的系统架构至关重要。本文档详细分解了其基本设计原则、高层结构以及协同工作的核心组件，旨在为去中心化应用创建一个可扩展且用户友好的环境。

# 系统架构

ArcBlock 被设计为一个可扩展、可延伸且易于使用的平台，用于构建和部署去中心化区块链应用。其架构建立在一套核心原则之上，并由几个协同工作的关键技术层组成。

## 设计原则

ArcBlock 平台的设计遵循四项核心原则，以确保其有效性和以用户为中心的特性：

*   **用户体验第一：** 平台优先考虑为终端用户提供无缝、直观的体验。
*   **性能至上：** 高性能是系统设计中的一个关键考量，以支持可扩展的应用。
*   **开放标准：** 系统建立在开放标准之上，以促进互操作性和社区协作。
*   **激励驱动的经济：** 平台整合了激励驱动的经济体系，以鼓励社区的参与和贡献。

## 高层概述

ArcBlock 平台引入了一套旨在促进区块链应用普及的技术。该架构由多个层次构成，包括用于底层区块链的访问层、用于应用逻辑的无服务器计算层以及用于实时通信的去中心化网关。

下图提供了平台结构的高层概述。

```d2
direction: down

Applications: {
  label: "您的应用"
  shape: rectangle

  dApp: {
    label: "dApp"
  }
  Mobile: {
    label: "移动端"
  }
  Web: {
    label: "Web 端"
  }
}

ArcBlock-Platform: {
  label: "ArcBlock 平台"
  shape: rectangle
  style: {
    stroke: "#888"
    stroke-width: 2
    stroke-dash: 4
  }

  Decentralized-Pub-Sub-Gateway: {
    label: "去中心化发布/订阅网关"
    shape: rectangle
  }

  Blocklet-Serverless-Computing: {
    label: "Blocklet (无服务器计算)"
    shape: rectangle

    Blocklet-Components: {
      label: "Blocklet 组件"
    }

    Custom-Blocklets: {
      label: "自定义 Blocklet"
    }
  }

  Open-Chain-Access-Protocol: {
    label: "开放链访问协议"
    shape: rectangle

    Bitcoin-Adapter: {
      label: "比特币适配器"
    }
    Ethereum-Adapter: {
      label: "以太坊适配器"
    }
    More-Adapters: {
      label: "..."
    }
  }
}

Underlying-Blockchains: {
  label: "底层区块链"
  shape: rectangle

  Bitcoin: {
    label: "比特币"
    shape: cylinder
  }
  Ethereum: {
    label: "以太坊"
    shape: cylinder
  }
  More-Chains: {
    label: "..."
    shape: cylinder
  }
}

Marketplace: {
  label: "市场与通证经济"
  shape: rectangle
}

Applications -> ArcBlock-Platform.Decentralized-Pub-Sub-Gateway: "实时通信"
ArcBlock-Platform.Decentralized-Pub-Sub-Gateway -> ArcBlock-Platform.Blocklet-Serverless-Computing: "API 网关"
ArcBlock-Platform.Blocklet-Serverless-Computing -> ArcBlock-Platform.Open-Chain-Access-Protocol: "通过...通信"
ArcBlock-Platform.Open-Chain-Access-Protocol.Bitcoin-Adapter -> Underlying-Blockchains.Bitcoin
ArcBlock-Platform.Open-Chain-Access-Protocol.Ethereum-Adapter -> Underlying-Blockchains.Ethereum
ArcBlock-Platform.Blocklet-Serverless-Computing <-> Marketplace: "贡献和使用组件"
ArcBlock-Platform.Open-Chain-Access-Protocol <-> Marketplace: "贡献和使用适配器"
```

### 开放链访问协议

开放链访问协议是一个开源组件，它提供了一个用于访问各种底层区块链的抽象层。类似于 ODBC 或 JDBC 为不同数据库提供标准接口的方式，该协议允许应用程序在不改变其核心业务逻辑的情况下跨多个区块链运行。

这种设计使社区能够构建和共享**链适配器**，并通过激励机制对此进行鼓励。这种协作方式使 ArcBlock 能够支持广泛的区块链协议，并不断扩展其兼容性。

### Blocklet

Blocklet 是一种用于运行多种应用类型的无服务器计算架构。它用于处理智能合约、预言机、资源和资产管理以及链下业务逻辑。Blocklet 通过开放链访问协议与区块链通信，并可使用基于 Algorand 的共识算法进行编排。

任何人都可以开发 Blocklet 作为服务或组件，并将其贡献给生态系统，当他们的贡献被他人使用时，将获得通证奖励。

### Blocklet 组件

Blocklet 组件是预先构建、可重用的 Blocklet，构成了 ArcBlock 平台的基础。ArcBlock 的许多核心功能，如通证服务和用户身份管理，都是使用这些组件实现的。它们被设计为高度可重用和可定制的。

开发者可以集成这些预构建的组件来加速应用开发。可用组件包括以下解决方案：
- 用户身份管理
- 实用通证
- 钱包
- 消息和通知服务

这些组件可以直接使用，也可以作为自定义实现的起点。与其他组件一样，社区可以通过 ArcBlock 市场开发和共享它们。

### 去中心化发布/订阅网关

该平台包含一个分布式消息系统，该系统支持发布/订阅模型，并作为 Blocklet 的 API 网关。该网关采用去中心化设计，并利用安全通信渠道，使应用程序能够为 Web 和移动平台上的用户提供响应式的实时体验。

该网关默认支持多种网络协议，包括 WebSocket、DDP、HTTPS 和 MQTT。开发者还可以灵活地使用新协议扩展网关，以满足特定的应用需求。

### 市场与通证经济

ArcBlock 为基于该平台构建的应用程序提供了一个完全可定制的通证经济管理器。这使得开发者可以创建自己独特的实用通证，这些通证继承了 ArcBlock 提供的所有标准功能。

**ArcBlock 市场**是一个原生应用，社区可以在其中贡献、共享和交换可重用组件，如链适配器、Blocklet，甚至完整的应用程序。

## 云节点

ArcBlock 引入了“云节点”的概念，它将一组云服务视为单个节点。一台物理计算机是硬件组件（CPU、内存、存储）协同工作的集合；类似地，一个云节点是一组协同工作的分布式云服务。这种方法提供了更高层次的抽象，从而提高了性能和安全性。

虽然云节点是首选的部署方式，但 ArcBlock 也可以在传统的单个节点上运行，例如物理服务器。这是开发或私有测试环境的常见设置。

使用云节点增强了而非损害了系统的去中心化和安全性：
- **安全性：** 云平台由服务提供商管理，他们实施了强大的安全措施，通常比自托管服务器或点对点节点提供更安全、更可靠的环境。
- **去中心化：** 云节点本质上是一种分布式服务，可能跨越不同可用区或区域中的多个服务器运行。未来，云节点可以由各种云供应商或自托管提供商提供，从而进一步增强网络的去中心化程度。

## 总结

ArcBlock 的系统架构是一个分层的、基于组件的框架，旨在实现灵活性、高性能和易用性。通过使用开放链访问协议抽象区块链的复杂性，通过 Blocklet 实现无服务器逻辑，并通过去中心化网关支持实时通信，该平台为开发者提供了一个全面的环境。云节点的概念进一步增强了可扩展性和安全性，使 ArcBlock 成为一个面向未来的去中心化应用开发平台。

要深入了解提到的具体组件，请参阅以下部分：
<x-cards data-columns="2">
  <x-card data-title="开放链访问" data-href="/developer-docs/core-components/open-chain-access" data-icon="lucide:link">解释用于访问底层区块链的抽象协议层。</x-card>
  <x-card data-title="Blocklet" data-href="/developer-docs/core-components/blocklet" data-icon="lucide:box">介绍用于运行应用程序的无服务器计算架构。</x-card>
  <x-card data-title="去中心化发布/订阅网关" data-href="/developer-docs/core-components/gateway" data-icon="lucide:network">描述充当 API 网关的分布式消息系统。</x-card>
  <x-card data-title="通证经济与服务" data-href="/developer-docs/token-services" data-icon="lucide:coins">对通证经济及相关服务的技术性分解。</x-card>
</x-cards>