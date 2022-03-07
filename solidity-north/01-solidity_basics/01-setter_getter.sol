// SPDX-License-Identifier: GPL-3.0

contract Property {
    int256 public price;

    function setPrice(int256 _price) public {
        price = _price;
    }

    function getPrice() public view returns (int256) {
        return price;
    }
}
