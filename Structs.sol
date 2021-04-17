// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract StructExample {
    
    //defining a struct
    struct Player {
        string name;
        uint score;
    }
    
    //instatiating structs
    Player public bob = Player("Bob", 10);
    Player public monroe = Player({ score: 50, name: "Monroe" })
    
    //update struct
    function monroeScoreChange(uint _score) external {
        monroe.score = _score;
    }
    
    //read struct
    function getMonroeScore() external returns(uint) {
        return monroe.score;
    }
    
    //delete struct
    function bobDelete() external {
        delete bob;
    }
}
