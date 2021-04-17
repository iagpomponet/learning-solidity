// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract StorageArrays {
    
    uint[] public numbers;
    
    // add elements
    constructor(){
        numbers.push(5);
        numbers.push(6);
        numbers.push(9);
    }
    
    // update 
    function updateArray(uint _index, uint _updatedValue) external {
        numbers[_index] = _updatedValue;
    }
    
    // delete an element
    function deleteArray(uint _index) external {
        delete numbers[_index];
    }
    
    //loop through an array
    // pass a number to a function and add that number to each element
    
    function addNumbers(uint _number) external {
        for(uint i = 0; i < numbers.length; i++){
            numbers[i] = numbers[i] + _number;
        }
    }
}
