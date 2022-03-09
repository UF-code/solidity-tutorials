// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Inheritance {
    address public owner;
    uint256 public fortune;
    bool public deceased;
    address payable[] public familyWallets;

    constructor() payable {
        owner = msg.sender;
        fortune = msg.value;
        deceased = false;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    modifier isDeceased() {
        require(deceased == true);
        _;
    }

    mapping(address => uint256) inheritance;

    function nowDeceased() public {
        deceased = true;
    }

    function setInheritance(address payable wallet, uint256 amount)
        public
        onlyOwner
    {
        familyWallets.push(wallet);
        inheritance[wallet] = amount;
    }

    function getFamilyWallets() public view returns (address payable[] memory) {
        return familyWallets;
    }

    function getInheritance(address wallet) public view returns (uint256) {
        return inheritance[wallet];
    }

    function transferInheritance() public isDeceased {
        for (uint256 i = 0; i < familyWallets.length; i++) {
            familyWallets[i].transfer(inheritance[familyWallets[i]]);
        }
    }
}
