// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    int public price = 100;
    string constant public location = "London";


    function test1() public pure returns(int){
        int x = 5;
        x = x * 2;

        string memory s1 = "abc";

        return x
    }
}