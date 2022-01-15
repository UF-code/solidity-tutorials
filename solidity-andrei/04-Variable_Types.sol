// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Property{
    
    // Booelan Type
    bool public sold;



    // Integer Type
    uint8 public x = 255;

    function Increment() public{
        x += 1;
    }
    function Decrement() public{
        x -= 1;
    }

}