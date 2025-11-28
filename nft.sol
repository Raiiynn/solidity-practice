// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    uint public nextId;

    constructor() ERC721("MyNFT", "NFT") {}

    function mint() public {
        _mint(msg.sender, nextId);
        nextId++;
    }
}