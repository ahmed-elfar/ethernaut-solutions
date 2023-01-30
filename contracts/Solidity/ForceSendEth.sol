// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForceSendEth {
  
  constructor() payable {
  }

  function sendEth(address payable to) public {
    //to is the adress ofthe acoount you want to force send eth
      selfdestruct(to);
  }
}