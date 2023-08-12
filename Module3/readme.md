# MyToken Smart Contract

The `MyToken` smart contract is an Ethereum ERC-20 token that extends the functionality of the OpenZeppelin's `ERC20` and `ERC20Burnable` contracts, while also implementing the `Ownable` contract for ownership management.

## Table of Contents

- [Overview](#overview)
- [Contract Details](#contract-details)
  - [Inheritance](#inheritance)
  - [Constructor](#constructor)
  - [Minting](#minting)

## Overview

The `MyToken` smart contract provides a basic implementation of an ERC-20 token with additional functionalities. It inherits from the OpenZeppelin contracts to utilize well-tested and standardized features, such as basic ERC-20 functionality, burning capabilities, and ownership management.

## Contract Details

### Inheritance

The `MyToken` contract inherits from the following contracts:
- `ERC20`: This is the standard ERC-20 token contract, providing basic token functionality like transferring and querying balances.
- `ERC20Burnable`: Extends the `ERC20` contract to add burning capabilities, allowing token holders to burn (destroy) their tokens irreversibly.
- `Ownable`: Implements ownership control, ensuring that only the owner of the contract can perform certain actions.

### Constructor

The constructor of the `MyToken` contract is executed upon deployment and initializes the token's attributes. It sets the token's name to "MyToken" and its symbol to "MTK". The constructor is inherited from the `ERC20` contract.

### Minting

The `mint` function allows the contract owner to create and distribute new tokens. It takes two parameters: the address to which the new tokens will be minted and the amount of tokens to be minted. Only the owner of the contract can call this function, as indicated by the `onlyOwner` modifier.

Here's how to use the `mint` function:
```solidity
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}
```
Make sure to replace address with the actual recipient's Ethereum address and uint256 with the desired amount of tokens to mint.

## Disclaimer
This code is provided as an educational resource and starting point for creating your own ERC-20 token. It's important to thoroughly test and audit your code before deploying it to a production environment. Additionally, keep in mind that blockchain and smart contract development is continuously evolving, and best practices may change over time.
