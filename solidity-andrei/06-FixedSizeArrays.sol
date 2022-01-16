// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract FixedSizeArray{
    uint[3] public numbers = [2,3,4];

    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3;

    function setElement(uint index, uint value) public{
        numbers[index] = value;
    }

    function getLength() public view returns(uint){
        return numbers.length;
    }

    function setBytesArray() public{
        b1 = 'a';
        b2 = 'ab';
        b3 = 'abc'; 
    }

}