// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Will {
    address owner;
    uint256 fortune;
    bool deceased;

    constructor() public payable {
        owner = msg.sender;
        fortune = msg.value;
        deceased = false;
    }

    // create modifier so the only person who can call the contract is the owner
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    // create modifier so that we only allocate funds if friend's gramps deceased
    modifier mustBeDeceased() {
        require(deceased == true);
        _;
    }

    // list of family wallets
    address payable[] familyWallets;

    // map through inheritance
    mapping(address => uint) inheritance;

    // set inheritance for each address
    function setInheritance(address payable wallet, uint amount) public {
        // to add wallets to the family wallets .push
        familyWallets.push(wallet);
        inheritance[wallet] = amount;
    }

}
