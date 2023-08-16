// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Points is ERC20, Ownable {
    constructor() ERC20("Degen", "DGN") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

     function decimals() public pure override returns (uint8) {
        return 0;
    }

    function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }

    function transferTokens(address _rec, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "You dont have enough tokens");
        approve(msg.sender, _value);
        transferFrom(msg.sender, _rec, _value);
    }

    function burnTokens(uint _value) external {
        require(
            balanceOf(msg.sender) >= _value,
            "You dont have enough tokens to burn"
        );
        _burn(msg.sender, _value);
    }

    function redeemTokens(uint _value) external {
        require(balanceOf(msg.sender) >= _value, "You dont have enough tokens");
        approve(msg.sender, _value);
        transferFrom(msg.sender, address(this), _value);
    }

}
