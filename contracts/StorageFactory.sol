// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./SimpleStorage.sol";

contract StorageFactory{
SimpleStorage public simpleStorage; //SimpleStorage is seen as it's own (contract) data type, since the contract has already been defined above. and simpleStorage is a variable
    
    function createSimpleStorageContract() public{
        simpleStorage = new SimpleStorage(); //this tells to create a new SimpleStorage contract and store the value in the simpleStorage variable 

    }
}