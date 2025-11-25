# Token Economy Concepts

Understand the core components of ArcBlock's self-sustaining ecosystem—the ArcBlock Token (ABT), Miners, and the Marketplace—and learn how they work together to power the platform. This section provides a clear, high-level overview of the economic principles that ensure the network is robust, decentralized, and community-driven.

The following diagram illustrates the relationships between the key components of the ArcBlock token economy:
```d2
direction: down

Developers-Users: {
  label: "Developers / Users"
  shape: c4-person
}

Miners: {
  label: "Miners"
  shape: c4-person
}

ArcBlock-Ecosystem: {
  label: "ArcBlock Ecosystem"
  shape: rectangle

  ABT: {
    label: "ArcBlock Token (ABT)"
    shape: circle
    style.fill: "#f0ad4e"
  }

  Marketplace: {
    label: "Marketplace"
    shape: rectangle
    style.fill: "#d9edf7"

    Reusable-Components: {
      label: "Reusable Components"
      shape: rectangle
      grid-columns: 3

      Chain-Adapters: {
        label: "Chain Adapters"
      }

      Blocklets: {
        label: "Blocklets"
      }

      Applications: {
        label: "Applications"
      }
    }
  }

  Computing-Resources: {
    label: "Computing Resources"
    shape: rectangle
  }

  Foundation-Services: {
    label: "Foundation Services"
    shape: rectangle
  }

  Application-Tokens: {
    label: "Application Tokens"
    shape: circle
    style.fill: "#dff0d8"
  }
}

Developers-Users -> ArcBlock-Ecosystem.Marketplace: "Discover & Use Components"
Developers-Users -> ArcBlock-Ecosystem.ABT: "Pay for services"
Developers-Users -> ArcBlock-Ecosystem.Application-Tokens: "Create & Use"
Miners -> ArcBlock-Ecosystem.Computing-Resources: "Provide Resources"
Miners -> ArcBlock-Ecosystem.Marketplace.Reusable-Components: "Contribute Components"
ArcBlock-Ecosystem.Marketplace -> Developers-Users: "Provide Components"
ArcBlock-Ecosystem.ABT -> Miners: "Compensate"
ArcBlock-Ecosystem.Foundation-Services -> ArcBlock-Ecosystem.ABT
ArcBlock-Ecosystem.Foundation-Services -> ArcBlock-Ecosystem.Marketplace
ArcBlock-Ecosystem.Foundation-Services -> ArcBlock-Ecosystem.Application-Tokens
```

## The ArcBlock Token (ABT)

The ArcBlock Token (ABT) is the native utility token of the ArcBlock platform, designed to power its ecosystem. It serves as the primary medium of exchange for services and resources within the platform.

To support a wide range of applications, ArcBlock has developed an optimized blockchain specifically for its token services, targeting a high-performance goal of over 100,000 transactions per second (Tx/s).

![ArcBlock Token Economy](../../../src/content/latest/images/ArcBlockToken.png)

The fundamental utility of ABT is to cover the costs associated with using the ArcBlock system, similar to how you would pay for a cloud computing service. However, ArcBlock refines the user experience by enabling application providers to pay transaction fees on behalf of their end-users. This model simplifies adoption, as users can interact with applications without needing to manage transaction fees directly. Developers can settle costs on a monthly basis, aggregating small charges to reduce expenses.

For mission-critical services, developers may also be required to stake a certain amount of ABT, ensuring commitment and reliability. To facilitate liquidity and integration with the broader blockchain community, ABT maintains a 1:1 mapping with ERC20 tokens, allowing developers to leverage the established Ethereum ecosystem.

## The Role of Miners

In the ArcBlock ecosystem, "miners" are contributors who provide essential resources and components to the network. Unlike miners in traditional Proof-of-Work systems like Bitcoin, ArcBlock miners contribute computing power or software components rather than solving cryptographic puzzles. They are compensated for their contributions, creating a symbiotic relationship that strengthens the platform.

### Resource Miners

Resource Miners are contributors who supply computing resources to the ArcBlock network. These resources can be provisioned in several ways:
*   **Cloud Computing:** Miners can run an ArcBlock cloud node using resources from cloud providers.
*   **Self-Hosted:** Miners can contribute their own self-hosted computing infrastructure.

Miners have full control over how their resources are shared. They can keep them private for their own use, share them with a select group of parties, or make them available to the entire public network.

### Component Miners

Component Miners contribute reusable software to the platform. These contributions are vital for expanding the capabilities and efficiency of the ecosystem. Examples of components include:
*   **Chain Adapters:** New connectors for different blockchains.
*   **Blocklet Components:** Reusable modules of code or services for building applications.
*   **Ready-to-Deploy Applications:** Complete applications that other users can deploy.

Components can be packaged code or services exposed through a Blocklet interface, such as a specialized machine learning service. A smart contract governs the terms for multi-party development, defining how fees are distributed and how the component's code can be forked or modified by others.

## The ArcBlock Marketplace

The ArcBlock Marketplace is a decentralized application built on the ArcBlock platform itself. It serves as a central hub where users can discover, evaluate, and use a wide variety of reusable components.

**Key Functions of the Marketplace:**
*   **Listing and Discovery:** Component Miners list their Chain Adapters, Blocklets, and applications for others to find.
*   **Evaluation and Reputation:** The marketplace maintains public feedback, quality ratings, and developer reputations. This information helps users make informed decisions when selecting components.
*   **Transparency and Trust:** All marketplace data is recorded on ArcBlock's public ledger, ensuring that the information is transparent, immutable, and trustworthy.

## Foundation Services

The platform's token economy is built upon a set of foundational services, which are themselves implemented as Blocklets. This architecture provides flexibility and allows the community to contribute to and improve the core token services over time. Application developers can use these Blocklet Building Blocks to easily handle token-related events and build complex business logic, all while benefiting from the security and performance of ArcBlock's distributed ledger.

## Application Tokens

ArcBlock empowers developers to go beyond using the native ABT by enabling them to create their own custom tokens. These application-specific tokens inherit all the features and benefits of the native ArcBlock token service, making it straightforward to build a custom token economy.

Tokens can represent a wide variety of assets, not just cryptocurrencies. They can be used to signify user identities, certifications, documents, or even track real-world items. This capability allows developers to tokenize virtually any aspect of their application, unlocking new business models and user engagement strategies. In the future, ArcBlock will also support Initial Coin Offerings (ICOs) for applications built and deployed on the platform.

## Summary

The ArcBlock token economy is a carefully designed system that incentivizes participation, rewards contribution, and ensures a decentralized, self-sustaining platform. The ArcBlock Token (ABT) fuels the ecosystem, Miners provide essential resources and components, and the Marketplace facilitates the exchange of value. Together, these elements create a powerful foundation for building and deploying decentralized applications.

For a more technical breakdown of these concepts, please refer to the [Token Economy & Services](./developer-docs-token-services.md) documentation.