# 通证经济与服务

了解 ArcBlock 通证经济的技术框架。本节详细介绍了 ArcBlock 通证（ABT）、矿工的独特角色、去中心化市场的功能，以及可用于创建自定义应用通证的服务。

ArcBlock 是一个建立在自给自足的通证系统之上的综合平台。该经济体系由 ArcBlock 通证（ABT）驱动，并涉及各种贡献资源和组件的参与者，从而创建了一个去中心化的协作生态系统。下图展示了该经济体系中的主要参与者及其互动关系：
```d2
direction: down

Miners: {
  label: "矿工"
  shape: c4-person
}

Developers: {
  label: "开发者/应用提供商"
  shape: c4-person
}

Users: {
  label: "最终用户"
  shape: c4-person
}

ArcBlock-Platform: {
  label: "ArcBlock 平台"
  shape: rectangle

  ABT: {
    label: "ArcBlock 通证 (ABT)"
    shape: rectangle
    style.fill: "#f0f9ff"
  }

  Marketplace: {
    label: "去中心化市场"
    shape: rectangle
    style.fill: "#ecfdf5"
  }

  Token-Foundation-Services: {
    label: "通证基础服务"
    shape: rectangle
    style.fill: "#fffbeb"
  }

  Ecosystem-Components: {
    label: "生态系统组件"
    shape: rectangle

    Resource-Pool: {
      label: "计算资源"
    }

    Component-Pool: {
      label: "可复用组件\n（Blocklet、适配器等）"
    }
  }

  Application: {
    label: "您的应用"
    shape: rectangle

    Application-Token: {
      label: "自定义应用通证"
    }
  }
}

Miners -> ArcBlock-Platform.Ecosystem-Components.Resource-Pool: "1a. 贡献资源"
Miners -> ArcBlock-Platform.Ecosystem-Components.Component-Pool: "1b. 贡献组件"
ArcBlock-Platform.Ecosystem-Components.Component-Pool -> ArcBlock-Platform.Marketplace: "2. 在市场上架"
ArcBlock-Platform.ABT -> Miners: "3. 以 ABT 补偿"
Developers -> ArcBlock-Platform.Marketplace: "4. 使用组件"
Developers -> ArcBlock-Platform.Token-Foundation-Services: "5. 创建自定义通证"
Developers -> ArcBlock-Platform.ABT: "6. 用 ABT 支付服务费用"
ArcBlock-Platform.Token-Foundation-Services -> ArcBlock-Platform.Application.Application-Token
Developers -> ArcBlock-Platform.Application: "构建"
ArcBlock-Platform.Application -> Users: "提供服务"
```

## ArcBlock 通证 (ABT)

ArcBlock 通证（ABT）是 ArcBlock 平台的原生实用型通证，旨在促进一个高性能、用户友好的经济系统。

### 核心效用与设计

ABT 的主要效用是支付使用 ArcBlock 平台相关的成本，类似于在云计算服务中使用点数。为了支持广泛的应用，底层区块链针对高吞吐量进行了优化，设计目标是实现每秒超过 100,000 笔交易（Tx/s）。

![ArcBlock 通证经济图示](../../../src/content/latest/images/ArcBlockToken.png)

一个关键的设计原则是通过从最终用户那里抽象掉交易费用来提升用户体验。应用提供商代表其用户支付任何必要的费用，通常是按月支付。这种模式允许聚合微交易，从而节省成本。此外，开发者可能需要质押一定数量的 ABT，以确保关键任务服务的可靠性。

### ERC20 兼容性

ABT 与以太坊上的 ERC20 通证标准保持 1:1 映射。这种兼容性提供了两个主要优势：
1.  **简化交易：** 便于通证交易和流动性。
2.  **生态系统整合：** 开发者可以利用围绕 ERC20 标准构建的成熟工具和社区，同时受益于 ArcBlock 的高性能通证服务。

虽然这种映射目前很有利，但随着原生 ABT 生态系统的成熟，预计其重要性将降低。

## 矿工角色

在 ArcBlock 生态系统中，“矿工”是为网络提供必要资源和组件的贡献者。这个角色与比特币或以太坊等系统中的传统矿工有显著不同。矿工的贡献将以 ABT 作为补偿。

矿工主要分为两类：

### 1. 资源矿工

资源矿工为平台贡献计算资源。他们可以通过多种方式提供这些资源：
*   **云节点：** 在云计算基础设施上运行 ArcBlock 的服务。
*   **自托管：** 贡献自己私有托管的计算硬件。

矿工对其资源的共享方式拥有完全的自主权。他们可以将其配置为私用，与特定的群体共享，或向整个公共网络开放。

### 2. 组件矿工

组件矿工为生态系统贡献可复用的软件组件。这些组件的范围可以从底层适配器到完整的、可直接部署的应用。示例包括：
*   **链适配器：** 用于连接不同区块链的新模块。
*   **Blocklet 组件：** 可复用的业务逻辑或后端功能片段。
*   **预构建应用：** 可供他人部署的“交钥匙”应用。
*   **通过 Blocklet 提供的外部服务：** 像深度学习模型这样的服务可以通过 Blocklet 接口暴露出来，使其能被其他 ArcBlock 应用消费，而无需直接在平台上运行。

智能合约用于管理组件开发的经济学，定义了多个贡献者之间的收入共享规则，以及分叉和改进现有组件的协议。

## ArcBlock 市场

ArcBlock 市场是一个构建在 ArcBlock 平台本身之上的去中心化应用。它作为发现、评估和使用可复用组件的中心枢纽。

市场的主要功能包括：
*   **上架与发现：** 矿工可以上架他们的组件（链适配器、Blocklet 等），供他人发现和使用。
*   **评估与排名：** 市场维护公开的反馈、质量评级和开发者声誉，以帮助用户评估组件的可靠性和效用。
*   **透明与信任：** 所有市场数据，包括评论和交易，都记录在由 ArcBlock 区块链驱动的公共账本上，以确保透明性和不可篡改性。

## 通证基础服务

平台的通证相关功能是使用一组基础 Blocklet 组件构建的。整个 ABT 系统都是用 Blocklet 实现的，这使得开发者能够轻松处理通证触发的事件并构建复杂的业务逻辑。底层的分布式账本技术确保了所有通证操作的安全、快速和可靠。

与所有 Blocklet 一样，这些基础服务可以由社区进行扩展和改进，从而促进一种协作的方式来增强平台的核心能力。

## 应用通证

除了原生 ABT，ArcBlock 平台还赋能开发者创建他们自己的自定义通证。这些用户自定义的通证会自动继承原生通证服务的所有强大功能，包括高性能、安全性和可靠性。

这种能力允许开发者构建适合其特定应用需求的自己的通证经济。通证可以代表除简单货币之外的各种资产，例如：
*   用户身份
*   证书和凭证
*   数字和实体文档
*   现实世界资产

通过提供将特定应用资产通证化的工具，ArcBlock 简化了构建自定义、自成一体的经济体的过程。该平台还设计用于支持在生态系统内构建和部署的应用进行首次代币发行（ICO）。

---

本节详细介绍了 ArcBlock 平台的核心经济原则。要了解驱动这些服务的无服务器计算架构，请继续阅读 [Blocklet](./developer-docs-core-components-blocklet.md) 文档。