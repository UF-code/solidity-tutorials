pragma solidity ^0.4.17;

contract Lottery {
    address public manager;
    address[] public players;

    // mapping(address => uint256) player;

    // Constructor
    function Lottery() public {
        manager = msg.sender;
    }

    // Modifiers
    modifier restricted() {
        require(msg.sender == manager);
        _;
    }

    // Getter Function For Players
    function getAllPlayers() public view returns (address[]) {
        return players;
    }

    function enter() public payable {
        require(msg.value > 0.01 ether);

        players.push(msg.sender);
    }

    function random() private view returns (uint256) {
        return uint256(keccak256(block.difficulty, now, players));
    }

    function pickWinner() public restricted {
        uint256 index = random() % players.length;
        players[index].transfer(this.balance);

        players = new address[](0);
    }
}
