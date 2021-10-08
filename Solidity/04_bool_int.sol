// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    // Bool Type
    bool public sold;

    // Integer Type
    uint8 public x = 255;
    int8 public y = -10;

    function f1() public{
        x += 1;
        // unchecked { x += 1; }
    }
}