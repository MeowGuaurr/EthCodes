// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts@5.0.0/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    uint256 public nextTokenId;

    constructor() ERC721("MyNFT", "RMGC"){
        _safeMint(msg.sender, nextTokenId++);
    }

    function mint(address to) external {
        uint256 tokenId = nextTokenId;
        nextTokenId ++;
        _safeMint(to, tokenId);
    }
}