// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Mood{
    
    uint mood;
    
    //create a function that writes a mood to the smart contract
    function setNumber(uint _mood) public{
        mood = _mood;
    }
    
    //create a function the reads the mood from the smart contract
    function getNumber() public view returns(uint){
        return mood;
    }
}
