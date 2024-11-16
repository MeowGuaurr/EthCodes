// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract PublicCounter{
    int public cuenta = 0;
    address propietario;

    constructor() {
        propietario = msg.sender;
    }

    function increment() public{
        cuenta++;   
    }

    function resetCount() public {
        require(msg.sender == propietario, "Solo propietario puede hacer reset de la cuenta");
        cuenta = 0;
    }
}