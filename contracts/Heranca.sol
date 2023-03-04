// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Heranca {
    mapping (string => uint) receiveValue;
    address public owner = msg.sender;

    function setValue(string memory _name, uint _value) public {
        require(msg.sender == owner); //only owner write in the contract
        receiveValue[_name] = _value;
    }

    function getValue(string memory _name) public view returns (uint){
        return receiveValue[_name];
    }

}