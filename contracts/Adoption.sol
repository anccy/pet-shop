// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;

    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    // Adopting a pet
    function adopt(uint256 petId) public returns (uint256) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }

    // add up
    
}
