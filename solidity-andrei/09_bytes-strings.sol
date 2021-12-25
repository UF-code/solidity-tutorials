// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract BytesandStrings {
    bytes public b1 = "abc";
    string public s1 = "abc";

    function addElement() public {
        b1.push("x");
    }

    function getElement(uint256 index) public view returns (bytes1) {
        return b1[index];
    }

    function getLength() public view returns (uint256) {
        return b1.length;
    }
}
