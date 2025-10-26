// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SimplePlant {
    // TODO 1: Deklarasikan 5 state variables
    string public plantName;
    uint256 public waterLevel;
    bool public isAlive;
    address public owner;
    uint256 public plantedTime; 

    // TODO 2: Buat constructor
    constructor() {
        plantName = "Rose";
        owner = msg.sender;
        waterLevel = 100;
        isAlive = true;
        plantedTime = block.timestamp;
    }

    // TODO 3: Buat fungsi water()
    function water() public {
        waterLevel  = 100;
    }

    // TODO 4: Buat fungsi getAge()
    function getAge() public view returns (uint256) {
        return block.timestamp - plantedTime;
    }
}