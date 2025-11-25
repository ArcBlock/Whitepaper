# Developer Documentation

Welcome to the technical deep dive into the ArcBlock platform. This documentation is engineered for developers, architects, and anyone who needs to understand the inner workings of ArcBlock, from its foundational design principles to its core components. By the end of this guide, you will have a comprehensive understanding of the system's architecture, protocols, and the services that power the ecosystem.

This guide provides a detailed examination of the technical aspects of the ArcBlock platform. It is designed to give you the knowledge needed to build sophisticated, decentralized applications. We will explore the system's architecture, its primary components, and the token economy that drives the network.

For a complete technical overview, please explore the following sections:

```d2
direction: down

ArcBlock-Platform: {
  label: "ArcBlock Platform"
  shape: rectangle

  System-Architecture: {
    label: "System Architecture"
    shape: rectangle
    Cloud-Nodes: {
      label: "Cloud Nodes"
    }
  }

  Core-Components: {
    label: "Core Components"
    shape: rectangle
    Open-Chain-Access-Protocol: {
      label: "Open Chain Access Protocol"
    }
    Blocklets: {}
    Decentralized-Pub-Sub-Gateway: {
      label: "Decentralized Pub/Sub Gateway"
    }
  }

  Token-Economy-Services: {
    label: "Token Economy & Services"
    shape: rectangle
    ArcBlock-Token-ABT: {
      label: "ArcBlock Token (ABT)"
    }
    Miners: {}
    Application-Tokens: {
      label: "Application Tokens"
    }
  }
}

```

<x-cards data-columns="3">
  <x-card data-title="System Architecture" data-icon="lucide:milestone" data-href="/developer-docs/architecture">
    Learn about the design principles, high-level architecture, and the innovative concept of Cloud Nodes that form the foundation of ArcBlock.
  </x-card>
  <x-card data-title="Core Components" data-icon="lucide:boxes" data-href="/developer-docs/core-components">
    Dive into the key technical components of ArcBlock, including the Open Chain Access Protocol, Blocklets, and the Decentralized Pub/Sub Gateway.
  </x-card>
  <x-card data-title="Token Economy & Services" data-icon="lucide:coins" data-href="/developer-docs/token-services">
    Understand the technical implementation of the ArcBlock Token (ABT), the roles of Miners, and how to create your own application tokens.
  </x-card>
</x-cards>

## Summary

This documentation serves as the definitive technical reference for the ArcBlock platform. It is structured to provide a logical progression from high-level architecture to the specific details of each component. By reviewing these materials, you will gain the expertise required to leverage the full power of ArcBlock for your development projects.

To further your understanding, we recommend proceeding to the [System Architecture](./developer-docs-architecture.md) section.