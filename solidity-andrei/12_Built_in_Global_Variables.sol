// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract BuiltinGlobalVariables{
    address public owner; 
    uint public sentValue;

    constructor(){
        owner = msg.sender;
    }

    function changeOwner() public{
        owner = msg.sender;
    }

    // send ether in wei to contract address
    function sendEther() public payable{
        sentValue = msg.value;
    }

    // get the balance of the contract address
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function howMuchGas() public view returns(uint){
        uint start = gasleft();
        uint j = 1;
        for(uint i=1; i<20; i++){
            j *= i;
        }

        uint end = gasleft();
        // how much gas it used in this code block
        return start - end;
    }
}
