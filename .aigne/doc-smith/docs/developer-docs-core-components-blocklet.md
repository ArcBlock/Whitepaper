An updated version of the document is provided below.

**Changes Made:**

*   Removed the `DIAGRAM_PLACEHOLDER` as requested.
*   Introduced the diagram with a brief sentence to improve the flow of the document and provide context for the image.

<document_content>
# Blocklet

Understand Blocklet, the serverless computing architecture at the core of ArcBlock. This section details its role as a high-level application protocol, its relationship with microservices and serverless computing, and the various types of business logic it is designed to handle.

Blocklet is a foundational component of the ArcBlock platform, functioning not just as an application protocol but as a core software architecture. The entire ArcBlock platform is constructed from a series of Blocklets. They communicate with underlying blockchains via the [Open Chain Access Protocol](./developer-docs-core-components-open-chain-access.md) and with client-side applications through the [Decentralized Pub/Sub Gateway](./developer-docs-core-components-gateway.md). In essence, Blocklets are central to the entire system's operation.

The following diagram illustrates the layered architecture of the ArcBlock platform and the central role of Blocklets:

![This technical diagram illustrates a layered architecture, detailing how "Application Scenarios" like Enterprise and Finance connect with "Offchain Resources" such as databases and medical records. These offchain resources interact with "Blockets," which are then linked in a chain to the underlying "Blockchain" layer. The clean, black-and-white line art clearly depicts the flow and relationships between these components.](../../../src/content/latest/images/BlockLet.png)

## Microservice Architecture

Microservice architecture is an ideal fit for blockchain applications. As a variant of the service-oriented architecture (SOA) style, it structures an application as a collection of loosely coupled, fine-grained services. This approach improves modularity, making applications easier to understand, develop, and test.

ArcBlock is designed as an event-driven microservice platform that uses Blocklet technology to overcome the inherent limitations of blockchain. A Blocklet communicates with the underlying blockchain through the Open Chain Access Protocol, allowing the application to securely access external data while preserving data integrity.

## Serverless Computing

Serverless computing is a cloud execution model where the cloud provider dynamically manages the allocation of machine resources. Most serverless providers offer Function as a Service (FaaS) platforms, which execute application logic without storing data.

This model works exceptionally well with blockchain applications. Most Blocklets can be implemented as serverless programs and managed through environments like AWS Lambda or Azure Functions. It's important to note that microservices and serverless computing are different levels of abstraction. Serverless computing can be used to implement a microservice, but it is not a requirement.

## Blocklet Types

Blocklet is inherently flexible and can be used to develop a wide variety of applications. A single Blocklet can consist of one or more of the following business logic units packaged together.

### Off-Chain Logic

As a native microservice, a Blocklet can access data sources beyond the blockchain, such as databases, external RESTful APIs, or any other data source. This allows Blocklets to be used for any application logic, even if it is not directly related to the blockchain, without adding overhead. Real-world decentralized applications often require significant off-chain logic, and Blocklet provides a unified solution for developers.

### Off-Chain and On-Chain Logic

Many applications require business logic that combines both on-chain and off-chain data and processes. For example, on-chain smart contracts cannot natively access external data like market prices or time-based events, as doing so would break the trust barrier. In these scenarios, an off-chain Blocklet acts as a secure bridge, connecting on-chain and off-chain components to execute the complete business logic.

### Asset and Resource Handling

Applications frequently need to manage assets like photos, videos, music, and documents. Since blockchain is not designed for storing large data files, these assets are typically handled by off-chain solutions. Common approaches include centralized services like AWS S3 or decentralized systems like IPFS.

Blocklet can communicate with any asset storage system. It is the perfect component for logic that maps assets to their on-chain tokens or identifiers, or for verifying assets against records stored on the blockchain.

### Smart Contracts

By communicating securely with on-chain code via the Open Chain Access Protocol, Blocklet enables the implementation of high-performance smart contracts while maintaining trust and verifying transaction authenticity.

Engineers have the flexibility to decide the balance between on-chain and off-chain logic. One approach is to treat the blockchain purely as a state machine, placing most of the business logic within the Blocklet. Conversely, a complex contract can be implemented fully on-chain, with the Blocklet serving only as a trigger or monitor for on-chain execution.

### Oracle

In the context of Blocklet design, an Oracle is a specific type of smart contract that uses external data sources as event triggers. Blocklet simplifies the implementation of Oracles by design, making it straightforward to integrate external information securely.

This design encourages engineers to thoughtfully divide on-chain and off-chain logic during development, improving efficiency without compromising security and trust.

## Blocklet Implementation

The initial implementation of Blocklets will be supported on a local test environment and on AWS for production. The production environment leverages advanced AWS features for performance and scalability. Future support is planned for other cloud platforms, including Google Compute Engine and Microsoft Azure, as well as containerized solutions like Docker, allowing users to deploy Blocklets without relying on a specific cloud provider.

Because Blocklet is an application protocol and architecture, it can be implemented in various languages and frameworks. The initial reference implementations are based on Node.js and Go.

## Blocklet Components

Blocklet Components are pre-built, reusable Blocklets that form the foundation of the ArcBlock platform itself. These highly customizable components provide core functionalities, such as token services and user identity management, accelerating the development of new applications.
</document_content>