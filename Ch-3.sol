// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArraysStructs {
    // Example struct
    struct Player {
        string name;
        uint256 score;
    }

    // Dynamic array of players
    Player[] public players;

    // Mapping from address to player index (optional)
    mapping(address => uint256) public playerIndex;
    mapping(address => bool) public hasPlayer;

    // Add a player to array
    function addPlayer(string memory _name) public {
        require(!hasPlayer[msg.sender], "Player already exists");
        players.push(Player(_name, 0));
        playerIndex[msg.sender] = players.length - 1;
        hasPlayer[msg.sender] = true;
    }

    // Update player score
    function increaseScore(address _playerAddr, uint256 _delta) public {
        require(hasPlayer[_playerAddr], "Player not found");
        uint idx = playerIndex[_playerAddr];
        players[idx].score += _delta;
    }

    // Read player
    function getPlayer(uint256 _index) public view returns (string memory, uint256) {
        Player storage p = players[_index];
        return (p.name, p.score);
    }

    // Get total players
    function totalPlayers() public view returns (uint256) {
        return players.length;
    }
}
