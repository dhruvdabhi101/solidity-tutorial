// SPDX-License-Identifier: MIT


pragma solidity >= 0.8.4;

contract Bank{
  struct Account{
    address owner;
    uint256 balance;
    uint256 accountCreatedTime;
  }
  mapping(address => Account) public LaxmiChitFunds;

  event balanceAdded(address owner, uint256 balance, uint256 time);
  event withdrawalBalance(address owner, uint256 balance, uint256 time);

  modifier minimum(){
    require(msg.value >= 0.5 ether,"Balance not sufficient");
    _;
  }

  function accountCreated()
  public
  payable
  minimum  {
    LaxmiChitFunds[msg.sender].owner = msg.sender;
    LaxmiChitFunds[balance].balance = msg.value; 
    LaxmiChitFunds[accountCreatedTime] = block.timestamp;
    emit balanceAdded(msg.sender,msg.value,block.timestamp)
  }
  // adding money to account 

  function deposit()
  public
  payable
  minimum{
    LaxmiChitFunds[msg.sender].balance += msg.value ;
    emit balanceAdded(msg.sender, msg.value, block.timestamp)
  }
  function withdraw()
  public 
  payable
  {
    payable (msg.sender).transfer(LaxmiChitFunds[msg.sender].balance);
    emit withdrawalBalance(msg.sender, msg.value, block.timestamp);

  }
  
}




