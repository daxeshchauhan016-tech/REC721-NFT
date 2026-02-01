// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract DaxeshNFT is ERC721URIStorage {

    uint256 public tokenCounter;
    uint256 public constant MAX_SUPPLY = 100;
    uint256 public mintPrice = 0.01 ether;

    constructor() ERC721("DaxeshNFT", "DNFT") {
        tokenCounter = 0;
    }

    function mintNFT(string memory metadataURI) public payable {
        require(tokenCounter < MAX_SUPPLY, "All NFTs minted");
        require(msg.value >= mintPrice, "Not enough ETH sent");

        uint256 tokenId = tokenCounter;

        _safeMint(msg.sender, tokenId);
        _setTokenURI(tokenId, metadataURI);

        tokenCounter++;
    }
}
