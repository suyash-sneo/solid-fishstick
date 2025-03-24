// SPDX-License-Identifier: MIT

pragma solidity ^0.8.29;         // solidity version
// pragma solidity >=0.8.18 <=0.8.29

contract SimpleStorage {

    // Basic solidity types: bool, uint, int, string, address, bytes
    // internal modifier by default
    uint256 favoriteNumber = 0;
    
    struct Person {
        uint256 number;
        string name;
    }
    
    Person public person1 = Person(7, "pat");       // same as Person({number: 7, name: "pat"})
    
    Person[] public listOfPeople;
    mapping(string => uint256) public nameToNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    } 

    // 6 places to store stuff in solidity (EVM) - stack, memory, storage (permanent variables), calldata, code, logs
    // calldata, memory allow the data to exist only temporarily
    // calldata - where contract's input are stored, readonly
    // mmeory - data can be modified
    function addPerson(string memory _name, uint256 _number) public {
        listOfPeople.push(Person({name: _name, number: _number}));
        nameToNumber[_name] = _number;
    }

    // Creating a getter function is the same as setting the type as public
    // That also creates a public getter under the hood
    // "view" keyword declares that function doesn't modify the state
    function getFavoriteNumber() public view returns(uint256) {
        return favoriteNumber;
    }
}
