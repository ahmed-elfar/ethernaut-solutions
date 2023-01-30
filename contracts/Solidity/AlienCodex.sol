// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import '../helpers/Ownable-05.sol';

contract AlienCodex is Ownable {

  bool public contact;
  bytes32[] public codex;

  modifier contacted() {
    assert(contact);
    _;
  }
  
  function make_contact() public {
    contact = true;
  }

  function record(bytes32 _content) contacted public {
    codex.push(_content);
  }

  function retract() contacted public {
    codex.length--;
  }

  function revise(uint i, bytes32 _content) contacted public {
    codex[i] = _content;
  }
}

//await contract.make_contact()
//await contract.retract()
//var p = web3.utils.keccak256(web3.eth.abi.encodeParameters(["uint256"],[1]))
//var i = BigInt(2 ** 256) - BigInt(p)
//var content = '0x' + '0'.repeat(24) + player.slice(2)
//await contract.revise(i, content, {from:player, gas: 900000})