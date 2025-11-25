An understanding of ArcBlock's system architecture is essential for developers looking to build on the platform. This document provides a detailed breakdown of its fundamental design principles, high-level structure, and the core components that work together to create a scalable and user-friendly environment for decentralized applications.

# System Architecture

ArcBlock is designed as a scalable, extensible, and easy-to-use platform for building and deploying decentralized blockchain applications. Its architecture is founded on a set of core principles and composed of several key technological layers that work in concert.

## Design Principles

The design of the ArcBlock platform is guided by four core principles to ensure its effectiveness and user-centricity:

*   **User Experience First:** The platform prioritizes a seamless and intuitive experience for end-users.
*   **Performance Matters:** High performance is a critical consideration in the system's design to support scalable applications.
*   **Open Standards:** The system is built upon open standards to foster interoperability and community collaboration.
*   **Incentive-Driven Economy:** The platform integrates an incentive-driven economy to encourage participation and contribution from the community.

## High-Level Overview

The ArcBlock platform introduces a suite of technologies designed to facilitate the adoption of blockchain applications. The architecture is composed of several layers, including an access layer for underlying blockchains, a serverless computing layer for application logic, and a decentralized gateway for real-time communication.

The following diagram provides a high-level overview of the platform's structure.

```d2
direction: down

Applications: {
  label: "Your Applications"
  shape: rectangle

  dApp: {
    label: "dApp"
  }
  Mobile: {
    label: "Mobile"
  }
  Web: {
    label: "Web"
  }
}

ArcBlock-Platform: {
  label: "ArcBlock Platform"
  shape: rectangle
  style: {
    stroke: "#888"
    stroke-width: 2
    stroke-dash: 4
  }

  Decentralized-Pub-Sub-Gateway: {
    label: "Decentralized Pub/Sub Gateway"
    shape: rectangle
  }

  Blocklet-Serverless-Computing: {
    label: "Blocklet (Serverless Computing)"
    shape: rectangle

    Blocklet-Components: {
      label: "Blocklet Components"
    }

    Custom-Blocklets: {
      label: "Custom Blocklets"
    }
  }

  Open-Chain-Access-Protocol: {
    label: "Open Chain Access Protocol"
    shape: rectangle

    Bitcoin-Adapter: {
      label: "Bitcoin Adapter"
    }
    Ethereum-Adapter: {
      label: "Ethereum Adapter"
    }
    More-Adapters: {
      label: "..."
    }
  }
}

Underlying-Blockchains: {
  label: "Underlying Blockchains"
  shape: rectangle

  Bitcoin: {
    label: "Bitcoin"
    shape: cylinder
  }
  Ethereum: {
    label: "Ethereum"
    shape: cylinder
  }
  More-Chains: {
    label: "..."
    shape: cylinder
  }
}

Marketplace: {
  label: "Marketplace & Token Economy"
  shape: rectangle
}

Applications -> ArcBlock-Platform.Decentralized-Pub-Sub-Gateway: "Real-time Communication"
ArcBlock-Platform.Decentralized-Pub-Sub-Gateway -> ArcBlock-Platform.Blocklet-Serverless-Computing: "API Gateway"
ArcBlock-Platform.Blocklet-Serverless-Computing -> ArcBlock-Platform.Open-Chain-Access-Protocol: "Communicate via"
ArcBlock-Platform.Open-Chain-Access-Protocol.Bitcoin-Adapter -> Underlying-Blockchains.Bitcoin
ArcBlock-Platform.Open-Chain-Access-Protocol.Ethereum-Adapter -> Underlying-Blockchains.Ethereum
ArcBlock-Platform.Blocklet-Serverless-Computing <-> Marketplace: "Contribute & Use Components"
ArcBlock-Platform.Open-Chain-Access-Protocol <-> Marketplace: "Contribute & Use Adapters"
```

### Open Chain Access Protocol

The Open Chain Access Protocol is an open-source component that provides an abstraction layer for accessing various underlying blockchains. Similar to how ODBC or JDBC offers a standard interface for different databases, this protocol allows an application to operate across multiple blockchains without altering its core business logic.

This design enables the community to build and share **Chain Adapters**, which are encouraged through an incentive mechanism. This collaborative approach allows ArcBlock to support a wide array of blockchain protocols and continuously expand its compatibility.

### Blocklet

Blocklet is a serverless computing architecture for running diverse application types. It is used to handle smart contracts, oracles, resource and asset management, and off-chain business logic. Blocklets communicate with blockchains via the Open Chain Access Protocol and can be orchestrated using an Algorand-based consensus algorithm.

Anyone can develop Blocklets as services or components and contribute them to the ecosystem, receiving token rewards when their contributions are used by others.

### Blocklet Components

Blocklet Components are pre-built, reusable Blocklets that form the foundation of the ArcBlock platform. Many of ArcBlock’s core features, such as token services and user identity management, are implemented using these components. They are designed to be highly reusable and customizable.

Developers can incorporate these pre-built components to accelerate application development. Available components include solutions for:
- User identity management
- Utility tokens
- Wallets
- Messaging and notification services

These components can be used out-of-the-box or as starting points for custom implementations. Like other components, they can be developed and shared by the community through the ArcBlock Marketplace.

### Decentralized Pub/Sub Gateway

The platform includes a distributed messaging system that supports a publish/subscribe model and functions as an API gateway for Blocklets. This gateway features a decentralized design and utilizes secure communication channels, enabling applications to deliver reactive, real-time experiences to users on both web and mobile platforms.

The gateway supports multiple network protocols by default, including WebSocket, DDP, HTTPS, and MQTT. Developers also have the flexibility to extend the gateway with new protocols to meet specific application requirements.

### Marketplace and Token Economy

ArcBlock features a fully customizable token economy manager for applications built on the platform. This allows developers to create their own unique utility tokens that inherit all the standard features provided by ArcBlock.

The **ArcBlock Marketplace** is a native application where the community can contribute, share, and exchange reusable components such as Chain Adapters, Blocklets, and even complete applications.

## Cloud Nodes

ArcBlock introduces the concept of a "Cloud Node," which treats a group of cloud services as a single node. A physical computer is a collection of hardware components (CPU, memory, storage) working together; similarly, a Cloud Node is a group of distributed cloud services working in concert. This approach provides a higher level of abstraction, leading to enhanced performance and security.

While a Cloud Node is the preferred deployment method, ArcBlock can also run on a traditional single node, such as a physical server. This is a common setup for development or private test environments.

Using Cloud Nodes enhances, rather than compromises, the decentralization and security of the system:
- **Security:** Cloud platforms are managed by service providers who enforce robust security measures, often resulting in a more secure and reliable environment than self-hosted servers or peer-to-peer nodes.
- **Decentralization:** A Cloud Node is inherently a distributed service that may run across multiple servers in different availability zones or regions. In the future, Cloud Nodes could be offered by various cloud vendors or self-hosted providers, further increasing the decentralization of the network.

## Summary

The system architecture of ArcBlock is a layered, component-based framework designed for flexibility, performance, and ease of use. By abstracting blockchain complexities with the Open Chain Access Protocol, enabling serverless logic with Blocklets, and supporting real-time communication via a decentralized gateway, the platform provides a comprehensive environment for developers. The concept of Cloud Nodes further enhances scalability and security, positioning ArcBlock as a forward-looking platform for decentralized application development.

For a deeper dive into the specific components mentioned, please refer to the following sections:
<x-cards data-columns="2">
  <x-card data-title="Open Chain Access" data-href="/developer-docs/core-components/open-chain-access" data-icon="lucide:link">Explains the abstract protocol layer for accessing underlying blockchains.</x-card>
  <x-card data-title="Blocklet" data-href="/developer-docs/core-components/blocklet" data-icon="lucide:box">Covers the serverless computing architecture for running applications.</x-card>
  <x-card data-title="Decentralized Pub/Sub GW" data-href="/developer-docs/core-components/gateway" data-icon="lucide:network">Describes the distributed messaging system that acts as an API gateway.</x-card>
  <x-card data-title="Token Economy & Services" data-href="/developer-docs/token-services" data-icon="lucide:coins">A technical breakdown of the token economy and related services.</x-card>
</x-cards>