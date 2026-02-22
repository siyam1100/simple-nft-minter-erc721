# Simple NFT Minter (ERC-721)

This repository contains a professional-grade Solidity smart contract for deploying non-fungible tokens (NFTs). It leverages the industry-standard OpenZeppelin library to ensure security and gas efficiency.

### Key Features
* **ERC-721 Standard:** Fully compliant with Ethereum NFT standards.
* **Auto-Incrementing IDs:** Uses Counters to manage Token IDs safely.
* **Metadata Support:** Easily link your NFTs to IPFS or centralized JSON metadata.
* **Ownable:** Secure administrative functions (like minting) restricted to the contract creator.

### How to Use
1. Install Hardhat or Foundry.
2. Add your RPC URL and Private Key to your environment.
3. Compile: `npx hardhat compile`
4. Deploy: `node deploy.js`

### Security
Built with `Ownable` and `ERC721URIStorage` to prevent unauthorized minting and ensure metadata integrity.
