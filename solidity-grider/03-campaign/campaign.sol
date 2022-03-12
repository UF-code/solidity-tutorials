// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.17;

contract Campaign {
    struct Request {
        string description;
        uint256 value;
        address recipient;
        bool complete;
    }

    Request[] public requests;
    address public manager;
    uint256 public minimumContribution;
    // address[] public approvers;
    mapping(address => bool) public approvers;

    modifier restricted() {
        require(manager == msg.sender);
        _;
    }

    function Campaign(uint256 minimum) public {
        manager = msg.sender;
        minimumContribution = minimum;
    }

    function contribute() public payable {
        require(msg.value > minimumContribution);

        // approvers.push(msg.sender);
        approvers[msg.sender] = true;
    }

    function createRequest(
        string description,
        address value,
        address recipient
    ) public restricted {

        // require(approvers[msg.sender]);

        // Request(description, value, recipient, false);
        Request memory newRequest = Request({
            descrtiption: description,
            value: value,
            recipient: recipient,
            complete: false
        });

        requests.push(newRequest);
    }
}
 