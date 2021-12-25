// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract Property {
    int256 public value;

    function(int256 _value) public {
        value = _value;
    }
}
