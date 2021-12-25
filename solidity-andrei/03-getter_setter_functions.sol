// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property {
    int256 public price;

    // you don't have to specify as private
    // string private location = "London";
    string location = "London";

    function setPrice(int256 _price) public {
        price = _price;
    }

    function getPrice() public view returns (int256) {
        return price;
    }

    function setLocation(string memory _location) public {
        location = _location;
    }

    function getLocation() public view returns (string memory) {
        return location;
    }
}
