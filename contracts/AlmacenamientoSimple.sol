// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract AlmacenamientoSimple {
    uint datoAlmacenado;

    function setNumber(uint x) public {
        if (x > 10){
            datoAlmacenado = x;
        }
    }

    function retrieveNumber() public view returns (uint) {
        return datoAlmacenado;
    }
}