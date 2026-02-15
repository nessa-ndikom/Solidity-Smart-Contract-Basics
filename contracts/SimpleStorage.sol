// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //defines the version of Solidity being used; ^ tells it that newer versions can also be run

contract SimpleStorage {
    uint256 public myfavouriteNumber; //defines the variable myfavouriteNumber as a positive variable; uint's default value is 0
// the public keyword lets use see the favourite Number value being entered

    // uint256[] listOfFavouritenNumbers; [] defines the variable as an array/list

    struct Person { // defines a custom data type that takes both strings & ints (name & number)
        uint256 favouriteNumber;
        string name;
    }

// Since `Person` is now its own data type, it can be called as a keyword to create a variable 👇🏾
    //Person public myFriend = Person({favouriteNumber: 2, name: "Nessa"});

// Storing numbers this way ☝🏾 means you have to write this line for every friend; a better way:
    Person[] public listOfPeople;

    function store (uint256 _favouriteNumber) public {
        myfavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256) { //the `view` keyword means that this function merely "reads" and spits out the inputed value in favouriteNumber (thus the `return` keyword)
        return myfavouriteNumber;
    }

// this function takes inputs and stores them in the name & favouriteNumber variables above
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push( Person(_favouriteNumber, _name));
//.push() is a built-in function that arrays have; it's saying: for whatver values are inputed in `_name` & `_favouriteNumber`, "push" them to the prev. defined varibale
    }
}