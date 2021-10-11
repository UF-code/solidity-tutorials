// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract FixedSizeArray{
    uint[3] public numbers = [2, 3, 4];

    

    function setElement(uint index, uint value) public{
        numbers[index] = value;
    }

    function getLength() public view returns(uint){
        return numbers.length;
    }
}