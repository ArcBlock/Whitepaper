# Token Economy & Services

Understand the technical framework of ArcBlock's token economy. This section provides a detailed breakdown of the ArcBlock Token (ABT), the distinct roles of Miners, the function of the decentralized Marketplace, and the services available for creating custom application tokens.

ArcBlock is a comprehensive platform built upon a self-sustaining token system. This economy is powered by the ArcBlock Token (ABT) and involves various participants who contribute resources and components, creating a decentralized and collaborative ecosystem. The following diagram illustrates the key participants and their interactions within this economy:
```d2
direction: down

Miners: {
  label: "Miners"
  shape: c4-person
}

Developers: {
  label: "Developers / App Providers"
  shape: c4-person
}

Users: {
  label: "End Users"
  shape: c4-person
}

ArcBlock-Platform: {
  label: "ArcBlock Platform"
  shape: rectangle

  ABT: {
    label: "ArcBlock Token (ABT)"
    shape: rectangle
    style.fill: "#f0f9ff"
  }

  Marketplace: {
    label: "Decentralized Marketplace"
    shape: rectangle
    style.fill: "#ecfdf5"
  }

  Token-Foundation-Services: {
    label: "Token Foundation Services"
    shape: rectangle
    style.fill: "#fffbeb"
  }

  Ecosystem-Components: {
    label: "Ecosystem Components"
    shape: rectangle

    Resource-Pool: {
      label: "Computing Resources"
    }

    Component-Pool: {
      label: "Reusable Components\n(Blocklets, Adapters, etc.)"
    }
  }

  Application: {
    label: "Your Application"
    shape: rectangle

    Application-Token: {
      label: "Custom Application Token"
    }
  }
}

Miners -> ArcBlock-Platform.Ecosystem-Components.Resource-Pool: "1a. Contribute Resources"
Miners -> ArcBlock-Platform.Ecosystem-Components.Component-Pool: "1b. Contribute Components"
ArcBlock-Platform.Ecosystem-Components.Component-Pool -> ArcBlock-Platform.Marketplace: "2. List on Marketplace"
ArcBlock-Platform.ABT -> Miners: "3. Compensate in ABT"
Developers -> ArcBlock-Platform.Marketplace: "4. Use Components"
Developers -> ArcBlock-Platform.Token-Foundation-Services: "5. Create Custom Tokens"
Developers -> ArcBlock-Platform.ABT: "6. Pay for Services in ABT"
ArcBlock-Platform.Token-Foundation-Services -> ArcBlock-Platform.Application.Application-Token
Developers -> ArcBlock-Platform.Application: "Builds"
ArcBlock-Platform.Application -> Users: "Serves"
```

## The ArcBlock Token (ABT)

The ArcBlock Token (ABT) is the native utility token of the ArcBlock platform, designed to facilitate a high-performance, user-friendly economic system.

### Core Utility and Design

The primary utility of ABT is to pay for the costs associated with using the ArcBlock platform, similar to how credits are used in a cloud computing service. To support a wide range of applications, the underlying blockchain is optimized for high-throughput, with a design goal of achieving over 100,000 transactions per second (Tx/s).

![Illustration of the ArcBlock Token Economy](../../../src/content/latest/images/ArcBlockToken.png)

A key design principle is to enhance user experience by abstracting away transaction fees from the end-user. Application providers pay any necessary fees on behalf of their users, typically on a monthly basis. This model allows for the aggregation of micro-transactions, leading to cost savings. Additionally, developers may be required to stake a certain amount of ABT to ensure the reliability of mission-critical services.

### ERC20 Compatibility

ABT maintains a 1:1 mapping with the ERC20 token standard on Ethereum. This compatibility provides two main advantages:
1.  **Simplified Exchange:** It facilitates easier token trading and liquidity.
2.  **Ecosystem Integration:** Developers can leverage the mature tooling and community built around the ERC20 standard while benefiting from ArcBlock's high-performance token services.

While this mapping is currently beneficial, it is anticipated to become less critical as the native ABT ecosystem matures.

## Miner Roles

In the ArcBlock ecosystem, "Miners" are contributors who provide essential resources and components to the network. This role differs significantly from traditional miners in systems like Bitcoin or Ethereum. Miners are compensated in ABT for their contributions.

There are two primary categories of Miners:

### 1. Resource Miners

Resource Miners contribute computing resources to the platform. They can provision these resources in several ways:
*   **Cloud Nodes:** Run ArcBlock's services on cloud computing infrastructure.
*   **Self-Hosted:** Contribute their own privately-hosted computing hardware.

Miners have full autonomy over how their resources are shared. They can configure them for private use, share them with a select group of parties, or make them available to the entire public network.

### 2. Component Miners

Component Miners contribute reusable software components to the ecosystem. These components can range from low-level adapters to complete, ready-to-deploy applications. Examples include:
*   **Chain Adapters:** New modules for connecting to different blockchains.
*   **Blocklet Components:** Reusable pieces of business logic or backend functionality.
*   **Pre-built Applications:** Turnkey applications that can be deployed by others.
*   **External Services via Blocklet:** A service, such as a deep learning model, can be exposed through a Blocklet interface, making it consumable by other ArcBlock applications without needing to run on the platform directly.

Smart contracts are used to manage the economics of component development, defining rules for revenue sharing among multiple contributors and protocols for forking and improving existing components.

## The ArcBlock Marketplace

The ArcBlock Marketplace is a decentralized application built on the ArcBlock platform itself. It serves as a central hub for the discovery, evaluation, and use of reusable components.

Key functions of the Marketplace include:
*   **Listing and Discovery:** Miners can list their components (Chain Adapters, Blocklets, etc.) for others to find and use.
*   **Evaluation and Ranking:** The marketplace maintains public feedback, quality ratings, and developer reputations to help users assess the reliability and utility of components.
*   **Transparency and Trust:** All marketplace data, including reviews and transactions, is recorded on a public ledger powered by ArcBlock's blockchain to ensure transparency and immutability.

## Token Foundation Services

The platform's token-related functionalities are built using a set of foundational Blocklet components. The entire ABT system is implemented with Blocklets, enabling developers to easily handle token-triggered events and build complex business logic. The underlying distributed ledger technology ensures that all token operations are secure, fast, and reliable.

As with all Blocklets, these foundation services can be extended and improved by the community, fostering a collaborative approach to enhancing the platform's core capabilities.

## Application Tokens

Beyond the native ABT, the ArcBlock platform empowers developers to create their own custom tokens. These user-defined tokens automatically inherit all the robust features of the native token service, including high performance, security, and reliability.

This capability allows developers to build their own token economies tailored to their specific application needs. Tokens can represent a wide array of assets beyond simple currency, such as:
*   User identities
*   Certificates and credentials
*   Digital and physical documents
*   Real-world assets

By providing the tools to tokenize application-specific assets, ArcBlock simplifies the process of building a custom, self-contained economy. The platform is also designed to support Initial Coin Offerings (ICOs) for applications built and deployed within the ecosystem.

---

This section has detailed the core economic principles of the ArcBlock platform. To understand the serverless computing architecture that powers these services, proceed to the [Blocklet](./developer-docs-core-components-blocklet.md) documentation.