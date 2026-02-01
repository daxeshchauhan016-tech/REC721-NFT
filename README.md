# REC721-NFT
# NFT Collection Smart Contract

This project is an ERC721-based NFT Smart Contract that allows users to mint uinque NFTs with metadata stored on IPFS.

The Contract is deployed on the Ethereum Sepolia test network and follows OpenZeppelin best practices.

## Features

- ERC721 compliant NFT Contract
- Public minting functionality
- Maximum supply limit
- Token URI support for IPFS metadata
- Deployed and tested on Sepolia testnet

## Contract Details

This Smart Contract is based on the ERC721 standard from OpenZeppelin.

Each NFT has:
- A uinque token ID
- A metadata URI pointing to IPFS
- An owner address stored on-chain

The contract controls minting, ownership tracking, and token URI management.

### Core Logic Explaination

- The contract uses a counter to generate uinque token IDs.
- When a user calls the mint function, a new NFT is created.
- The NFT is assigned to the caller's wallet address.
- The token URI links the NFT to its metadata stored on IPFS.

## Minting Process

The minting process allows users to create new NFTs by calling the mint function.

Steps:
1. A user calls the mint function from their wallet.
2. The contract generates a new token ID.
3. The NFT is safely minted to the user's address.
4. The token URI is assigned to the NFT.

### Mint Access

- Minting is public and can be called by any wallet.
- Each mint creates one uinque NFT.
- The contract ensures that token IDs are never reused.

## Metadata & IPFS

Each NFT uses off-chain metadata stored on IPFS.

The metadata JSON file includes:
- Name of the NFT
- Description
- Image URL (IPFS hash)
- Additional attributes

The tokenURI stored on-chain points to the IPFS location of this metadata.

### Why IPFS?

IPFS ensures that NFT metadata is:
- Decentralized
- Immutable
- Not dependent on a single server

This prevents broken images or metadata loss over time.

## Deployment

The contract is deployed using Remix IDE and MetaMask.

### Steps to Deploy

1. Open Remix IDE
2. Upload the smart contract file
3. Compile the contract using Solidity ^0.8.x.
4. Connect MetaMask using Injected Provider.
5. Select Sepolia test network.
6. Click Deploy and confirm the transaction in MetaMask.

## Network Information

- Network: Ethereum Sepolia Testnet
- Contract Type: ERC721 NFT
- Deployment Tool: Remix IDE
- Wallet: MetaMask

## Security Notes

- The contract uses OpenZeppelin libraries for safety.
- No external calls are made during minting.
- The contract was tested using Remix IDE before deployment.
