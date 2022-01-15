// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Property{
    uint public price;
    string constant public location = "London";

    function setPrice(uint _price) public {
        price = _price;
    }

    function f1() public pure returns(int){
        int x = 5;
        x = x*2;
        return x;
    }
}