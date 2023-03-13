// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;


contract SimpleCoin {

    uint256 public initialSupply; //initial value of token
    mapping(address => uint256) public balanceOf; //mapping QUE liga um endereco a um valor
    address public owner;

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
