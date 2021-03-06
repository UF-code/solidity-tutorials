// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SetterandGetter {
    int256 public price;

    function setPrice(int256 _price) public {
        price = _price;
    }

    function getPrice() public view returns (int256) {
        return price;
    }
}
