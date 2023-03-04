// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractMonster {

    enum typeMonster{
        Special,
        Normal,
        Rare
    }

    struct Monster{
        string name;
        uint power;
        typeMonster type1;
    }

    

    Monster [] monsters;

    function createMonster(string memory _name) public{
        Monster memory newMonster;
        newMonster.name = _name;
        newMonster.power = block.timestamp % 20;

        if (block.timestamp % 4 == 0){newMonster.type1 = typeMonster.Rare;}
        else if (block.timestamp  % 4 == 1){newMonster.type1 = typeMonster.Special;}
        else if (block.timestamp % 4 == 2){newMonster.type1 = typeMonster.Normal;}

        monsters.push(newMonster);
    }

    function getMonster(uint _id) external view returns(string memory, uint){
        Monster memory monster = monsters[_id];
        return (monster.name,monster.power);
    }

    function updatePower(uint _id, uint _newPower) public {

        Monster storage monster = monsters[_id];
        monster.power = _newPower;

        monsters[_id] = monster;
    }
}