// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Property{

    int public price;

    function setPrice(int _price) public{
        price = _price;
    }
    function getPrice() public view returns(int){
        return price;
    }


    string location = "London";

    function setLocation(string memory _location) public{
        location = _location;
    }
    function getLocation() public view returns(string memory){
        return location;
    }

}