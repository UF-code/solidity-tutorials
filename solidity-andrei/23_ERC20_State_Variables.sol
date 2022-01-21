// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;
// https://eips.ethereum.org/EIPS/eip-20

interface ERC20Interface{
    
    function totalSupply() external view returns (uint);
    function balanceOf(address tokenOwner) external view returns (uint balance);
    function transfer(address to, uint tokens) external returns (bool success);

    function allowance(address tokenOwner, address spender) external view returns (uint remaining);
    function approve(address spender, uint tokens) external returns (bool success);
    function transferFrom(address from, address to, uint tokens) external returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);


}


contract Cryptos is ERC20Interface{
    
    string public name = "Cryptos";
    string public symbol = "CRPT";
    uint public decimals = 0; // 18
    uint public override totalSupply;

    address public founder;
    mapping(address => uint) public balances;
    // balances[0x11111....] = 100;

    mapping(address => mapping(address => uint)) allowed;

    // 0x1111.....(Owner) allows 0x22222....(The Spender) ---- 100 tokens
    // allowed[0x1111...][0x2222....] = 100;

    constructor(){
        totalSupply = 1000000;
        founder = msg.sender;
        balances[founder] = totalSupply;
    }

    function balanceOf(address tokenOwner) public view override returns (uint balance){
        return balances[tokenOwner];
    }

    function transfer(address to, uint tokens) public override returns(bool success){
        require(balances[msg.sender] >= tokens);

        balances[to] += tokens;
        balances[msg.sender] -= tokens;
        emit Transfer(msg.sender, to, tokens);

        return true;
    }

    // 
    function allowance(address tokenOwner, address spender) public view override returns(uint){
        return allowed[tokenOwner][spender];
    }

    function approve(address spender, uint tokens) public override returns(bool success){
        require(balances[msg.sender] >= tokens);
        require(tokens > 0);

        allowed[msg.sender][spender] = tokens;

        emit Approval(msg.sender, spender, tokens);
        return true;
    }

    function transferFrom(address from, address to, uint tokens) public override returns (bool success){
        require(allowed[from][to] >= tokens);
        require(balances[from] >= tokens);

        balances[from] -= tokens;
        balances[to] += tokens;
        allowed[from][to] -= tokens;

        return true;
    }

}

contract CryptosICO is Cryptos{
    address public admin;
    address payable public deposit;
    uint tokenPrice = 0.001 ether; // 1 Ether = 1000 Cryptos
    uint public hardCap = 300 ether;
    uint public raisedAmount;
    uint public saleStart = block.timestamp;
    uint public saleEnd = block.timestamp + 604800; // ico ends in one week
    uint public tokenTradeStart = saleEnd + 604800; // transferable in a week after sale
    uint public maxInvestment = 5 ether;
    uint public minInvestment = 0.1 ether;

    enum State {beforeStart, running, afterEnd, halted}
    State public icoState;


    constructor(address payable _deposit){
        deposit = _deposit;
        admin = msg.sender;
        icoState = State.beforeStart;
    }

    modifier onlyAdmin(){
        require(msg.sender == admin);
        _;
    }

    function halt() public onlyAdmin{
        icoState = State.halted;
    }

    function resume() public onlyAdmin{
        icoState = State.running;
    }

    function changeDepositAddress(address payable newDeposit) public onlyAdmin{
        deposit = newDeposit;
    }

    function getCurrentState() public view returns(State){
        if(icoState == State.halted){
            return State.halted;
        } else if(block.timestamp < saleStart){
            return State.beforeStart;
        } else if(block.timestamp >= saleStart && block.timestamp <= saleEnd){
            return State.running;
        }else{
            return State.afterEnd;
        }
    }


}