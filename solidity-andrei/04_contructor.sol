// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property {
    int256 public price;
    string public location;
    address public owner;
    int256 immutable area = 100; // no one will be able to change

    constructor(int256 _price, string memory _location) {
        price = _price;
        location = _location;
        owner = msg.sender;
    }

    function setPrice(int256 _price) public {
        price = _price;
    }

    function setLocation(string memory _location) public {
        location = _location;
    }

    function setOwner(address _owner) public {
        owner = _owner;
    }
}
