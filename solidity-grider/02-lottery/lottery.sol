pragma solidity ^0.4.17;

contract Lottery {
    address public manager;
    address[] public players;

    // mapping(address => uint256) player;

    // Constructor
    function Lottery() public {
        manager = msg.sender;
    }

    function enter() public payable {
        require(msg.value > 0.01 ether);

        players.push(msg.sender);
    }

    function random() private view returns (uint256) {
        return uint256(keccak256(block.difficulty, now, players));
    }
}
