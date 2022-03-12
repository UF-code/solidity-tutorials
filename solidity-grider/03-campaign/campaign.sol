// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.17;

contract Campaign {
    address public manager;
    uint256 public minimumContribution;
    address[] public approvers;

    function Campaign(uint256 minimum) public {
        manager = msg.sender;
        minimumContribution = minimum;
    }

    function contribute() public payable {
        require(msg.value > minimumContribution);

        approvers.push(msg.sender);
    }
}