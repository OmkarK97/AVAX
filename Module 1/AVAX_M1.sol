// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AvaxTest{
    uint256 public num;

    function testRequire(uint256 x) public {
        require (x > 10, "X should be greater than 10");
        num = x;
    }

    function testAssert(uint256 x) public {
        assert (x > 5);
        num = x;
    }

    function testRevert(uint256 x) public pure {
        if(x > 15){
            revert("The value of x is greater than 15");
        }
    }

}