// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract MappingExample {
    //initiate simple mapping 
    mapping(string => uint) public players;
    
    //nested mapping 
    mapping(string => mapping(string => uint)) public versions;
    
    // fill up map with data
    constructor(){
        players['bob'] = 20;
        players['alice'] = 50;
        players['monroe'] = 10;
        versions['alpha']['raj'] = 100;
    }
    
    // reading data from a mapping 
    function getScore(string memory _player) external view returns(uint){
        return players[_player];
    }
    
    //update 
    function scoreUpdate(string memory _player, uint _score) external {
        players[_player] = _score;
    }
    
    // delete a player 
    function deletePlayer(string memory _player) external {
        delete players[_player];
    }
    
    //read nested data 
    function getNestedData(string memory _version, string memory _player) external view returns(uint){
        return versions[_version][_player];
    }
}
