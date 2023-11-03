// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// import "@openzeppelin/contracts@5.0.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@5.0.0/token/ERC721/extensions/ERC721URIStorage.sol";
// import "@openzeppelin/contracts@5.0.0/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts@5.0.0/access/Ownable.sol";

contract mintnft is ERC721URIStorage , Ownable{
    constructor(address initialOwner)
        ERC721("dogNFT", "cutuDogy")
        Ownable(initialOwner)
    {}

    // constructor arguments are collection name and symbol
    function mint(
        address _to, // wallet adress that nft is being minted to 
        uint256 _tokenID, // unique token id for that nft
        string calldata _uri // IPFS adress to metadata file
    ) external onlyOwner{
        // External functions are part of the contract interface, which means they can be called from other contracts and via transactions
        // only owner modifier specifies the nft can be only minted by the owner
        _mint(_to,_tokenID); // u just a token id and adress of person u want to send it to
        _setTokenURI(_tokenID, _uri);
    }

}