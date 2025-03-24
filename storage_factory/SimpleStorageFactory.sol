// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

//Default: import "./SimpleStorage.sol";
import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageContracts;

    function createSimpleStorageContract() public {
        
        // "new" creates an instance of contract to deploy
        SimpleStorage simpleStorage = new SimpleStorage();

        simpleStorageContracts.push(simpleStorage);
    }

    function storageFactoryStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // Application Binary Interface - ABI
        SimpleStorage mySimpleStorage = simpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function storageFactoryGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage mySimpleStorage = simpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.getFavoriteNumber();
    }
}
