// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract A{
    string[] public cities = ['Prague', 'Bucharest'];

    function f_memory() public view{
        string[] memory s1 = cities;
        s1[0] = 'Tokyo';
    }
    function f_storate() public{
        string[] storage s1 = cities;
        s1[0] = 'Berlin';
    }
}