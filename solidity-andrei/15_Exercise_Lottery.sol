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
        players.push(payable(msg.sender));
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}