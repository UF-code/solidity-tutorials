// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Property {
    // Boolean Type
    bool public sold;

    // Integer Type
    uint256 public x = 255;
    int8 public y = -10;

    function f1() public {
        x += 1;
    }
}
