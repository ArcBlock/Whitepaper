# Core Components

To build powerful decentralized applications, it's essential to understand the foundational technologies that drive the ArcBlock platform. This section provides a technical overview of the key components that form our ecosystem, giving developers a clear map of the system's inner workings, from blockchain interoperability to serverless computing.

This document serves as a high-level summary. For a comprehensive exploration of each component, please refer to the detailed sub-sections.

## Core Component Overview

The ArcBlock platform is a sophisticated ecosystem composed of several key technological pillars. Each component is designed to be modular and powerful, working in concert to provide a seamless development and user experience. The following diagram illustrates how these core components interact:

```d2
direction: down

Client-Apps: {
  label: "Client Applications\n(Mobile/Web)"
  shape: rectangle
}

Gateway: {
  label: "Decentralized\nPub/Sub Gateway"
  shape: rectangle
}

Blocklet: {
  label: "Blocklet\n(Serverless Computing)"
  icon: "https://www.arcblock.io/image-bin/uploads/eb1cf5d60cd85c42362920c49e3768cb.svg"
}

OCA: {
  label: "Open Chain Access\nProtocol"
  shape: rectangle
}

Consensus: {
  label: "Algorand Consensus"
  shape: rectangle
}

Blockchains: {
  label: "External Blockchains"
  shape: rectangle
  style: {
    stroke-dash: 4
  }
  Bitcoin: {
    label: "Bitcoin"
  }
  Ethereum: {
    label: "Ethereum"
  }
  Others: {
    label: "..."
  }
}

Client-Apps <-> Gateway: "Real-time Communication"
Gateway <-> Blocklet: "Secure Messaging"
Blocklet -> OCA
Blocklet -> Consensus
OCA -> Blockchains: "Unified Interface"

```

Below is an overview of these core parts.

<x-cards data-columns="2">
  <x-card data-title="Open Chain Access" data-icon="lucide:link" data-href="/developer-docs/core-components/open-chain-access">
    A protocol that enables applications to work with various blockchain technologies, such as Bitcoin and Ethereum, through a unified interface.
  </x-card>
  <x-card data-title="Blocklet" data-icon="lucide:server" data-href="/developer-docs/core-components/blocklet">
    A serverless computing architecture for running application logic, acting as the central hub connecting blockchains and user interfaces.
  </x-card>
  <x-card data-title="Decentralized Pub/Sub Gateway" data-icon="lucide:network" data-href="/developer-docs/core-components/gateway">
    A distributed messaging system that facilitates secure, real-time communication between client applications and Blocklets.
  </x-card>
  <x-card data-title="Algorand Consensus" data-icon="lucide:shield-check" data-href="/developer-docs/core-components/algorand">
    The consensus algorithm adopted for high-performance and secure transaction validation within the ArcBlock ecosystem.
  </x-card>
</x-cards>

## Summary

The core components—Open Chain Access Protocol, Blocklet, the Decentralized Pub/Sub Gateway, and Algorand—are the engine of the ArcBlock platform. They provide the necessary abstraction, computing power, communication channels, and consensus mechanism to build scalable and robust decentralized applications.

For a deeper dive into the architecture and implementation of each component, please explore the individual sections linked above. To understand how these components fit into the overall system, refer to the [System Architecture](./developer-docs-architecture.md) document.