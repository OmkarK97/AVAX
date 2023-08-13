// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is Ownable, ERC20 {
    constructor(
        string memory name,
        string memory symbol,
        uint256 totalSupply
    ) ERC20(name, symbol) {
        _mint(msg.sender, totalSupply);
    }

    // Mint additional tokens
    function mint(address _address, uint256 amount) public onlyOwner {
        _mint(_address, amount);
    }

    // Burn tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Transfer tokens to another address
    function transfers(address recipient, uint256 amount) public returns(bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}
