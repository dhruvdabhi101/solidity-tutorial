// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.4;

contract Variables {
    uint256 unsignedNumber; // not negative number
    int256 Number; // negative numbers 
    bool state; // true and false
    address user; // wallet address 0x...
    bytes32 e; // binary data 

    // dynamic size
    string s; // normal string 
    bytes something;  
    uint[] array; // simple array // dynamic size 
    mapping(uint256 => mapping(uint256 => address)) database; // key value pair

    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public num = 123;


    // user defined 
    struct person{
        string name;
        uint256 income;
    }

    mapping(uint256 => student) studentDatabase;

    enum stateOfSomething{
        done,
        undone
      }


    function doSomething() public {
      uint i = 456; // local var -> not stored on block chain

        // Here are some global variables
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }


    // control statements

    uint256 coins = 0 ;
    function add(uint256 _num) public{
        if(_num == 100){
            coins += _num;
        }
        else if(_num < 100){
          coins += 100
        }
        else{
          // do nothing
        }
      }
}

