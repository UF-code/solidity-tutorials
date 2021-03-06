// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

// Abstract Contract Can Not Be Deployed on Blockchain
abstract contract BaseContract{
    int public x;
    address public owner;

    constructor(){
        x = 5;
        owner = msg.sender;
    }

    // 
    function setX(int _x) public virtual;

}

contract A is BaseContract{
    int public y = 3;

    function setX(int _x) public override{
        x = _x;
    }

}