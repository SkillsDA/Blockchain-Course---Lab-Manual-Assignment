// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * Foundation Course in Blockchain Technology
 * Module 3 - Lab Exercise
 * 
 * @title unlock
 * @dev unlock by finding the pin
 */
 
contract unlock {
    
    address private owner; // Variable to store owner address

    uint256 private pin; // Variable to store pin number 
    
    event pinset(uint256 pin);
    
    constructor() {
        
        owner = msg.sender; // Contract Deployer is set as the Owner
        
        pin = block.timestamp % 2021; // Method to set the pin 
        
        emit pinset(pin);
    }

    /**
     * @dev function to unlock with correct pin and change the owner
     * @param _pin correct pin to unlock the contract 
     * @param _newowner address of the new owner 
     */ 
    function unlockpin(uint256 _pin, address _newowner) public {
        
        require(pin == _pin, "Incorrect Pin");
        owner = _newowner;
        
    }
    
}