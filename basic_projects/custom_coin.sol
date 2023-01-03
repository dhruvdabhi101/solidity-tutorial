//// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20{
  constructor() ERC20("dhruvcoin", "DDC"){
    _mint(msg.sender, 1000000* (10 ** uint256(decimals())));
  }
}


// for importing token in your metamask

// click on import token 


// enter hash which was created when deploying this code on polygon testnet 

// copy the token contact address 

// paste it into metamask 

