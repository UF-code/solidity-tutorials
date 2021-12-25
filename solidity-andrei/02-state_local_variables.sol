// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property {
    int256 public price = 100;

    // strings are stored in storage, memory, calldata not in the stack
    // gas cost a lot do not use them at all
    string public constant location = "London";

    // price = 100; is not allowed in solidity

    // pure does not modify the blockchain neither effects it's allocated on stack
    function f1() public pure returns (int256) {
        int256 x = 5;
        x = x * 2;
        return x;
    }

    // storage it cost lots of gas
    // memory and stack does not cost a gas
}
