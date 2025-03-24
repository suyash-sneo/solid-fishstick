// SPDX-License-Identifier: MIT

pragma solidity ^0.8.29; 

import { SimpleStorage } from "./SimpleStorage.sol";

// Inheritence from SimpleStorage
contract AddFiveStorage is SimpleStorage {

    // "virtual" needs to be added to the function to be overridden
    // "override" to the function that is overriding
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    } 
}
