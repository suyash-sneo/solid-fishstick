// SPDX-License-Identifier: MIT

pragma solidity ^0.8.29; 

contract SimpleStorage {

    uint256 favoriteNumber = 0;
    
    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    } 

    function getFavoriteNumber() public view returns(uint256) {
        return favoriteNumber;
    }
}
