// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Will {
    address owner;
    uint256 fortune;
    bool isDeceased;

    constructor() payable {
        owner = msg.sender;
        fortune = msg.value;
        isDeceased = false;
    }

    // create modifier so the only person who can call the contract is the owner
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    // create modifier so that we only allocate funds if friend's gramps deceased
    modifier mustBeDeceased() {
        require(isDeceased == true);
        _;
    }

    // list of family wallets
    address payable[] familyWallets;

    // map through inheritance
    mapping(address => uint256) inheritance;

    // set inheritance for each address
    function setInheritance(address payable wallet, uint256 amount)
        public
        onlyOwner
    {
        // to add wallets to the family wallets .push
        familyWallets.push(wallet);
        inheritance[wallet] = amount;
    }

    // Pay each family member based on their wallet address
    function payout() private mustBeDeceased {
        for (uint256 i = 0; i < familyWallets.length; i++) {
            familyWallets[i].transfer(inheritance[familyWallets[i]]);
        }
    }

    // oracle switch simulation
    function hasDeceased() public onlyOwner {
        isDeceased = true;
        payout();
    }
}
