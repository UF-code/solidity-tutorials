// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Property{
    address private immutable owner;
    int private price;
    string private fork;

    constructor(int _price, string memory _fork){
        owner = msg.sender;
        price = _price;
        fork = _fork;
    }

    function setPrice(int _price) public{
        price = _price;
    }
    function getPrice() public view returns(int){
        return price;
    }

    function setFork(string memory _fork) public{
        fork = _fork;
    }
    function getFork() public view returns(string memory){
        return fork;
    }

}