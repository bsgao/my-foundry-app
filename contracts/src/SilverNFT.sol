pragma solidity ^0.8.22;

import "/Users/brandongao/foundry-learn/my-foundry-app/node_modules/@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "/Users/brandongao/foundry-learn/my-foundry-app/node_modules/@openzeppelin/contracts/access/Ownable.sol";

contract SilverOunce is ERC721, Ownable {
    uint256 private _nextTokenId;

    constructor(address initialOwner)
        ERC721("SilverOunce", "FXAG")
        Ownable(initialOwner)
    {}

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
    }
}