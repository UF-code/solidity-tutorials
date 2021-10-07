// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    int public price;
    string public location = "London";

    // Setter Function For Price
    function setPrice(int _price) public{
        price = _price;
    }

    // Getter Function For Price
    function getPrice() public view returns(int){
        return price;
    }

    // Setter Function For Location
    function setLocation(string memory _location) public{
        location = _location;
    }

    // Getter Function For Location
    function getLocation() public view returns(string memory){
        return location;
    }
}