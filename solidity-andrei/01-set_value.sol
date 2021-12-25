// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property {
    int256 public value;

    function(int256 _value) public {
        value = _value;
    }
}
