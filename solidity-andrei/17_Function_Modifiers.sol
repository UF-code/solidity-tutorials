// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Property{
    uint public price;
    address public owner;

    // declaring the constructor
    constructor(){
        price = 0;
        owner = msg.sender;
    }

    function changeOwner(address _owner) public{
        owner = _owner;
    }

    function setPrice(uint _price) public{
        price = _price;
    }
}