// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SimpleNFT is ERC721URIStorage, Ownable {
    uint256 private _tokenIds;

    constructor() ERC721("CryptoAsset", "CASSET") Ownable(msg.sender) {}

    /**
     * @dev Mints a new NFT to a specific address.
     * @param player The address that will receive the NFT.
     * @param tokenURI The metadata link (IPFS/URL).
     */
    function mintNFT(address player, string memory tokenURI)
        public
        onlyOwner
        returns (uint256)
    {
        _tokenIds++;

        uint256 newItemId = _tokenIds;
        _safeMint(player, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}
