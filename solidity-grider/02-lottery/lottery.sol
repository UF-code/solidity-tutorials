pragma solidity ^0.4.17;

contract Lottery {
    address public manager;
    address payable[] public players;

    // mapping(address => uint256) player;

    // Constructor
    function Lottery() public {
        manager = msg.sender;
    }

    function enter() public payable {
        players.push(msg.sender);
    }
}
