// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.4;
contract Block{
    int256 public coins = 0 ; // public with variables create "Get" automatically

    function add() public{
        coins += 1;
    }
    function sub() public{
        coins -= 1;
    }
    function set(int _coins) public{ // great practice using variables as "_coins" 
        coins = _coins;
    }
    
}
