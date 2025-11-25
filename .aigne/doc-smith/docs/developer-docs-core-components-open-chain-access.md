# Open Chain Access

Understand how ArcBlock's Open Chain Access Protocol provides a unified, abstract layer for building applications that can seamlessly communicate with diverse underlying blockchains. This section details the protocol's architecture, its multi-level API, and the role of Chain Adapters in achieving blockchain interoperability.

ArcBlock’s Open Chain Access Protocol is an abstraction layer that enables applications to work with a variety of blockchain protocols, such as Bitcoin, Ethereum, and Hyperledger. This protocol is designed to be open-source, allowing the community to contribute, create extensions, and drive improvements.

The core design decouples the application logic from the specific requirements of any single blockchain. This is achieved through a layered architecture, which simplifies development and ensures applications are adaptable and future-proof.

This architecture is shown in the overview below:
```d2
direction: down

BLOCKLET: {
  label: "BLOCKLET"
  OPEN-CHAIN-ACCESS-API: {
    label: "OPEN CHAIN ACCESS API"
  }
}

OPEN-CHAIN-ACCESS-LAYER: {
  label: "OPEN CHAIN ACCESS LAYER"
}

CHAIN-ADAPTERS: {
  label: "CHAIN ADAPTERS"
  grid-columns: 3

  Bitcoin-Adapter: {
    label: "Bitcoin Adapter"
  }
  Ethereum-Adapter: {
    label: "Ethereum Adapter"
  }
  Hyperledger-Adapter: {
    label: "Hyperledger Adapter"
  }
}

Underlying-Chains: {
  label: "UNDERLYING CHAINS"
  grid-columns: 3

  Bitcoin: {
    label: "Bitcoin"
  }
  Ethereum: {
    label: "Ethereum"
  }
  Hyperledger: {
    label: "Hyperledger"
  }
}

BLOCKLET.OPEN-CHAIN-ACCESS-API <-> OPEN-CHAIN-ACCESS-LAYER
OPEN-CHAIN-ACCESS-LAYER <-> CHAIN-ADAPTERS

CHAIN-ADAPTERS.Bitcoin-Adapter <-> Underlying-Chains.Bitcoin
CHAIN-ADAPTERS.Ethereum-Adapter <-> Underlying-Chains.Ethereum
CHAIN-ADAPTERS.Hyperledger-Adapter <-> Underlying-Chains.Hyperledger

Underlying-Chains.Bitcoin <-> Underlying-Chains.Ethereum
Underlying-Chains.Ethereum <-> Underlying-Chains.Hyperledger

```

![This architectural diagram illustrates the Open Chain Access Protocol, depicting a hierarchical structure. It shows a "BLOCKLET" component, containing an "OPEN CHAIN ACCESS API," interacting with an "OPEN CHAIN ACCESS LAYER" which subsequently connects to multiple "CHAIN ADAPTERS." These adapters then interface with underlying chains, represented by interconnected hexagonal shapes, with double-headed arrows indicating bidirectional communication flow between all layers.](../../../src/content/latest/images/OpenChainAccessProtocol.png)

## Open Chain Access Layer

The Open Chain Access Layer is the central component that defines a set of high-level, generic APIs for open connectivity. This layer is supported by underlying Chain Adapters, with each adapter implemented for a specific blockchain protocol. It features three distinct API levels to accommodate different development needs.

| Level | Description |
| :---- | :---------- |
| **Level 1: Common Chain APIs** | Provides the foundational API set for the Open Chain Access Protocol. All Chain Adapters are required to support every API at this level. |
| **Level 2: Common Chain Data APIs** | Enables fundamental access to blockchain data, treating the underlying blockchain as a finite state machine. While adapters must support this API level, their specific capabilities may vary. The API set includes methods for querying these capabilities. |
| **Level 3: Native Chain APIs** | An advanced, optional API set that exposes the native features of an underlying blockchain protocol. Supporting these APIs allows an application to maximize its use of a specific blockchain's unique functionalities. |

## Chain Adapters

Chain Adapters function like device drivers, translating the specific protocols of an underlying blockchain into the unified APIs defined by the Open Chain Access Layer. This allows developers to interact with different blockchains without needing to learn the intricacies of each one. Some adapters may require a combination of on-chain and off-chain components to work together.

ArcBlock will provide initial implementations for major blockchains, including Bitcoin, Ethereum, and Hyperledger. As the protocol is open-sourced, the community will be able to contribute new adapters and improve existing ones.

### Chain Adapters Marketplace

To foster a robust ecosystem, community-developed Chain Adapters will be available in the ArcBlock Marketplace. Contributors will be rewarded with tokens when their adapters are used, creating a strong incentive for the community to develop a wide range of high-quality, high-performance adapters for various blockchains.

## Relationship with BaaS

Blockchain as a Service (BaaS) platforms, offered by cloud providers like IBM and Microsoft Azure, simplify the deployment of blockchain nodes and networks. ArcBlock is designed to work in concert with these platforms.

While BaaS simplifies the *deployment* of blockchain infrastructure, ArcBlock simplifies the *development and deployment* of decentralized applications on top of that infrastructure. ArcBlock will integrate with major cloud computing platforms, allowing users to manage BaaS services directly from within their ArcBlock applications.

## Design Principles

The design of the Open Chain Access Protocol is heavily inspired by the evolution of open database connectivity (ODBC) standards in traditional database systems. In many application architectures, a blockchain serves a role analogous to a database. By learning from the history of database development, ArcBlock provides a standardized, interoperable access layer that abstracts away the complexity of the underlying technology, much as ODBC did for databases.

This approach allows developers to focus on application logic rather than on the specific implementation details of a particular blockchain, leading to more efficient development and more portable applications.