// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Lottery{
    address payable[] public players;
    address public manager;

    constructor(){
        manager = msg.sender;
    }


    // Contract can have only one receive function
    // Contract receive's eth from Externally Owned Account(EOA)
    // Function can not take arguments neither return them
    // Visibility must be external 
    // Must be payable
    receive() external payable{
        // 1000000000000000000 wei is a 1 ether
        require(msg.value >= 1 ether);
        players.push(payable(msg.sender));
    }

    function getBalance() public view returns(uint){
        require(msg.sender == manager);
        return address(this).balance;
    }

    function random() public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players.length)));
    }
    // Chainlink VRF to Generate Real Random Variables

}