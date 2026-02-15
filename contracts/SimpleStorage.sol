// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //defines the version of Solidity being used; ^ tells it that newer versions can also be run

contract SimpleStorage {
    uint256 public favouriteNumber; //defines the variable favouriteNumber as a positive variable; uint's default value is 0
// the public keyword lets use see the favourite Number value being entered

    function store (uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256) { //the `view` keyword means that this function merely "reads" and spits out the inputed value in favouriteNumber (thus the `return` keyword)
        return favouriteNumber;
    }
}