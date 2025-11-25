# The ArcBlock Solution

After outlining the challenges facing the blockchain industry, this section introduces ArcBlock as a comprehensive platform service designed to solve them. You will learn how ArcBlock's architecture and core components provide a high-performance, user-friendly, and flexible environment for building decentralized applications.

ArcBlock addresses the common problems of poor performance, user-unfriendliness, high costs, and platform lock-in through a revolutionary new design. Unlike standalone software packages or simple API sets, ArcBlock is a complete platform service that integrates blockchain technology with cloud computing. It's designed as an incentive-driven marketplace that empowers the community to build, share, and grow the ecosystem together.

The following diagram illustrates the key components of the ArcBlock platform and how they interact to solve common blockchain challenges.
```d2
direction: down

Cloud-Infrastructure: {
  label: "Cloud Infrastructure"
  shape: rectangle

  aws: {
    label: "AWS"
  }

  azure: {
    label: "Windows Azure"
  }
}

ArcBlock-Platform: {
  label: "ArcBlock Platform"
  shape: rectangle

  Decentralized-Applications: {
    label: "Decentralized Applications"
    shape: rectangle
  }

  Blocklet: {
    label: "Blocklet (Serverless)"
    shape: rectangle
  }

  Open-Chain-Access-Protocol: {
    label: "Open Chain Access Protocol"
    shape: rectangle
  }

  Token-Economy: {
    label: "Token Economy & Marketplace"
    shape: rectangle
  }
}

Underlying-Blockchains: {
  label: "Underlying Blockchains"
  shape: rectangle

  Bitcoin: {}
  Ethereum: {}
  Hyperledger: {}
}

ArcBlock-Platform.Decentralized-Applications -> ArcBlock-Platform.Blocklet
ArcBlock-Platform.Blocklet -> ArcBlock-Platform.Open-Chain-Access-Protocol
ArcBlock-Platform.Open-Chain-Access-Protocol -> Underlying-Blockchains
ArcBlock-Platform.Token-Economy <-> ArcBlock-Platform.Blocklet
ArcBlock-Platform -> Cloud-Infrastructure: "Runs Natively On"
```

Key components that deliver this solution include:

*   **Open Chain Access Protocol:** An innovative layer that provides open connectivity to multiple blockchain protocols. This eliminates the "platform lock-in" problem, giving developers the freedom to choose, evaluate, and even switch between different underlying blockchains without rewriting their applications.
*   **Blocklet:** A serverless computing architecture for running applications. Blocklets are high-level protocols that can be implemented in any language, leveraging the native performance of the platform. They do more than just access blockchains; they can connect to any existing data source and perform both on-chain and off-chain computations.

![Roadmap Toward Blockchain 3.0](../../../src/content/latest/images/RoadmapTowardBlockcahin3.0.png)

## Core Advantages of ArcBlock

Building and deploying decentralized applications with ArcBlock provides significant advantages over other frameworks in the market. The platform is designed from the ground up to be a self-evolving ecosystem that prioritizes user experience and leverages modern cloud infrastructure.

### Built for the New Token Economy

ArcBlock is more than just a software platform; it is a self-evolving ecosystem driven by a token economy. The platform is designed to be a marketplace for reusable services, components, and applications.

*   **Incentive-Driven:** "Miners" in the ArcBlock ecosystem are rewarded with tokens not just for providing computing resources, but for contributing reusable components, new services, and ready-to-deploy applications.
*   **Community-Powered Growth:** This model creates a positive, self-sustaining platform that evolves on its own. The ArcBlock Foundation initiated the project, but its future development is driven by the entire community.

### Optimized for the Best Experience

The platform is built using a "top-down" strategy that places the user experience at the center of its design, benefiting both end-users and developers.

*   **For Users:** Applications built with ArcBlock offer reactive, real-time experiences. Users can access them through a standard web browser without needing special plugins or by downloading a mobile app from an app store, ensuring a familiar and seamless process.
*   **For Developers:** ArcBlock simplifies the development process significantly. Developers no longer need to deal with low-level blockchain protocols. With provided mock blockchain adapters, they can start developing and testing applications without running local blockchain test nodes.

### Built for the Cloud

ArcBlock is designed to run natively in the cloud, a fundamental difference from many other blockchain platforms. This approach allows a node to be a "logical computer" composed of one or more virtual machines or a group of cloud services working together. This modern architecture elevates blockchain technology to the next level. ArcBlock will initially support AWS and Windows Azure, with plans to expand to other major cloud platforms.

### Built with an Open Standard

ArcBlock is committed to open standards and collaboration. The project avoids "reinventing the wheel" and focuses on developers' needs.

*   **Open Source:** Core components are open-sourced to encourage transparency and community involvement.
*   **Community Contribution:** The team actively contributes to various blockchain technology communities and standards organizations, including the W3C Blockchain Community Group, Enterprise Ethereum Alliance, and Hyperledger Foundation.

## Summary

ArcBlock presents a comprehensive solution to the prevailing challenges in the blockchain space by offering a platform that is powerful, flexible, and user-centric. By combining cloud computing with an innovative, incentive-driven economic model, it paves the way for the next generation of decentralized applications.

For a deeper dive into how the token economy functions, please see the next section.

<x-cards data-columns="2">
  <x-card data-title="The Problems" data-icon="lucide:alert-triangle" data-href="/user-guide/problems">
    Review the common challenges in the blockchain space that ArcBlock solves.
  </x-card>
  <x-card data-title="Token Economy Concepts" data-icon="lucide:coins" data-href="/user-guide/token-economy">
    Learn about the ArcBlock Token (ABT), Miners, and the Marketplace.
  </x-card>
</x-cards>