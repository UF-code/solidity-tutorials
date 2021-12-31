// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract GlobalVariables {
    address public owner;
    uint256 public sentValue;

    constructor() {
        owner = msg.sender;
    }

    function changeOwner() public {
        owner = msg.sender;
    }

    function sendEther() public payable {
        sentValue = msg.value;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
