// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.4 ;

contract BigVault{
  address public owner ;

  // creating structure
  struct locker{
    uint256 value;
    uint256 timelocked;
  }

  uint256 counter = 0 ;
  mapping (uint256 => locker) public Vault;


  // modifier for onlyOwner 
  modifier onlyOwner() {
    require(msg.sender == owner, "Only Owner Allowed");
    _;
  }
  constructor(){
    owner = msg.sender; 
  }

  // depositing money to locker
  function deposit(uint256 _time)
  public
  payable
  onlyOwner
  {
    counter += 1 ;
    Vault[counter].timelocked = _time;
    Vault[counter].value = msg.value;
  }

  // withdrawing  
  function withdraw(uint256 _lockerNo)
  public
  onlyOwner
  {
    require(Vault[counter].timelocked <= block.timestamp, "Too soon honey");
    payable(owner).transfer(Vault[_lockerNo].value);
  }

}

