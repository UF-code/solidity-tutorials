// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

// 
interface BaseContract{
    // 
    function setX(int _x) external;
}

contract A is BaseContract{
    int public x;
    int public y = 3;

    function setX(int _x) public override{
        x = _x;
    }

}