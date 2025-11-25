# Overview

This document provides a comprehensive technical overview of the ArcBlock platform, detailing its purpose, scope, and core architecture. It is designed to guide both non-technical and technical readers through the complexities of the ecosystem, ensuring everyone can find the information they need.

## Introduction

The ArcBlock platform is a blockchain ecosystem designed for building and deploying decentralized applications (dApps). This whitepaper offers a high-level technical summary of the platform's key components and design principles. It assumes the reader has a foundational knowledge of cloud computing, dApps, and blockchain technology.

The information herein is for informational purposes. As ArcBlock evolves to meet market demands, the products and architectural designs described may change. We are committed to keeping this document updated to reflect the latest state of the platform.

## Who Is This For?

To address the needs of a diverse audience, this whitepaper is organized into distinct paths. Please select the path that best aligns with your interests and technical background.

<x-cards data-columns="2">
  <x-card data-title="User Guide" data-icon="lucide:users" data-href="/user-guide">
    For business leaders, product managers, and anyone interested in the practical applications and benefits of ArcBlock without the deep technical details.
  </x-card>
  <x-card data-title="Developer Documentation" data-icon="lucide:code" data-href="/developer-docs">
    For software engineers, system architects, and developers who need a detailed understanding of ArcBlock's architecture, core components, and protocols.
  </x-card>
</x-cards>

## Document Structure

This whitepaper provides a structured exploration of the ArcBlock ecosystem. The diagram below illustrates the relationship between the main sections, guiding you through the available content paths. Below is a summary of the main sections to help you navigate the content.

```d2
direction: down

ArcBlock-Technical-Whitepaper: {
  label: "ArcBlock Technical Whitepaper"
  shape: rectangle
}

User-Guide: {
  label: "User Guide\n(Non-Technical Path)"
  shape: rectangle
}

Developer-Documentation: {
  label: "Developer Documentation\n(Technical Path)"
  shape: rectangle
}

Archive: {
  label: "Archive"
  shape: rectangle
}

ArcBlock-Technical-Whitepaper -> User-Guide
ArcBlock-Technical-Whitepaper -> Developer-Documentation
ArcBlock-Technical-Whitepaper -> Archive

```

| Section                 | Description                                                                                                                              |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| **User Guide**          | Explains ArcBlock's core concepts in simple terms, focusing on the problems it solves and its benefits for users and businesses.           |
| **Developer Documentation** | Offers a deep technical dive into the ArcBlock platform, covering system architecture, core components, and the underlying protocols. |
| **Archive**             | Contains historical versions of the whitepaper for reference, including the original version published during the Token Sale Event.      |

## Related Documents

For additional information, please refer to the official ArcBlock resources and the original whitepaper published during the Initial Coin Offering (ICO).

<x-cards data-columns="2">
  <x-card data-title="ArcBlock Official Website" data-icon="lucide:globe" data-href="https://arcblock.io">
    Explore the official website for the latest news, updates, and product information.
  </x-card>
  <x-card data-title="ICO Version Whitepaper" data-icon="lucide:file-text" data-href="https://www.arcblock.io/file/whitepaper/WhitePaperEnV2_en-US.pdf">
    Review the original whitepaper that was published during the Token Sale Event for historical context.
  </x-card>
</x-cards>

## Summary

This overview serves as the entry point to the ArcBlock technical whitepaper. By providing distinct paths for different audiences and a clear structure, it aims to deliver a precise and useful guide to understanding the ArcBlock platform. We encourage you to proceed to the section that best fits your needs.

For a non-technical introduction, please see the [User Guide](./user-guide.md). For in-depth technical details, proceed to the [Developer Documentation](./developer-docs.md).