// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract DynamicArrays {
    uint256[] public numbers;

    function getLength() public view returns (uint256) {
        return numbers.length;
    }

    function addElement(uint256 item) public {
        numbers.push(item);
    }

    function popElement() public {
        numbers.pop();
    }

    function getElement(uint256 index) public view returns (uint256) {
        if (index < numbers.length) {
            return numbers[index];
        }
        return 0;
    }
}
