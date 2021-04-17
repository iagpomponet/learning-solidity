// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract FirstContract {
    // have a state variable - count 
    uint public count = 10;
    
    
    function addNumber(uint _number) public {
        count = count + _number;
    }
    
    function subtractNumber(uint _number) public {
        count = count - _number;
    }
}




// a getter function for that variable

// add a number to that variable

// subtract from that variable
