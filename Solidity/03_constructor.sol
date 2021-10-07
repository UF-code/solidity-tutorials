// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    int public price;
    string public location;
    address public immutable owner;
    int public immutable area = 100;

    constructor(int _price, string memory _location){
        price = _price;
        location = _location;
        owner = msg.sender;
    }

    // Setter Function For Price
    function setPrice(int _price) public{
        price = _price;
    }
    // Setter Function For Location
    function setLocation(string memory _location) public{
        location = _location;
    }
    // Getter Function For Price
    function getPrice() public view returns(int){
        return price;
    }
    // Getter Function For Location
    function setLocation() public view returns(string memory){
        return location;
    }
}