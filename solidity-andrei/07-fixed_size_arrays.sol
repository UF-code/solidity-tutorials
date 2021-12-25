// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract FixedSizeArrays {
    uint256[3] public numbers = [3, 4, 7];

    // bytes

    bytes1 public b1; // 0x00

    bytes2 public b2; // 0x0000

    bytes3 public b3; // 0x000000

    bytes4 public b4; // 0x00000000

    // ... up to bytes32

    function setElement(uint256 index, uint256 value) public {
        numbers[index] = value;
    }

    function getLength() public view returns (uint256) {
        return numbers.length;
    }

    function setBytesArray() public {
        b1 = "a";
        b2 = "ab";
        b3 = "abc";
        b4 = "z";
    }
}
