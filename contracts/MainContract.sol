// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;


contract SimpleCoin {

    uint256 public initialSupply; //initial value of token
    mapping(address => uint256) public balanceOf; //mapping QUE liga um endereco a um valor
    address public owner;


    //https://eips.ethereum.org/EIPS/eip-20
    // OPTIONAL FUNTIONS:
        // name - return the name of token
        // symbol - return symbol of the token
        // decimal - return number o decimal using by the token eg.8 (1_0000_0000)

    //FUNTIONS
        // totalSupply - value of the token
        // balanceOf - returns the account balance of another account with adress _owner
        // transfer, transferFrom, approve, allowance

    //EVENTS
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);


    modifier onlyOwner{
        require(msg.sender == owner); //only owner changeOwner
        _;
    }


    constructor(){
        owner = msg.sender;
        initialSupply = 1_000_000;
        balanceOf[owner] = initialSupply;

    }

    function changeOwner(address _newOwner) public onlyOwner{
        owner = _newOwner;
    }


}
