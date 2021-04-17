// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract EnumExample {
    
    //make enum
    enum ShirtSize { SMALL, MEDIUM, LARGE };
    ShirtSize size;
    
    
    // use the enum
    // set a default value to enum
    constructor(){
        size = ShirtSize.MEDIUM;
    }
    
    //get data from enum
    function getSize() public view returns(ShirtSize) {
        return size;
    }
    
    // pass enum to a function as a parameter
    function setSize(ShirtSize _size) public {
        size = _size;
    }
}
