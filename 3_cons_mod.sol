//// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.4;

contract Blockchain{
  address public owner ; 
 constructor(){
    owner = msg.sender;

 }
  uint256 coins = 0 ;
  function add() public{
    require(coins <= 3 , "To many coins")
    coins++;
  }

  modifier onlyOwner() { // filter 
    require(msg.sender == owner, "Only owner allowed");
    _;
  }
  function sub() pubilc onlyOwner{
      coins -= 1 ;
    } 
  

}
