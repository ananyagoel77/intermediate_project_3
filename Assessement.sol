// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// Importing the ERC20 implementation from OpenZeppelin library
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// constructing contract inheriting from the ERC20 standard implementation
contract MyToken is ERC20 {
    address public owner;

    // intializing the constructor
    constructor() ERC20("MyToken", "MTK") {
        owner = msg.sender;
    }

    // Function to mint the initial supply of tokens
    function mint(address to, uint256 amount) public {
        require(msg.sender == owner, "Only owner can mint");
        _mint(to, amount);
    }
    
    // Function to burn tokens
    function burn(address from, uint256 amount) public {
        require(msg.sender == owner, "Only owner can burn");
        _burn(from, amount);
    }
}
