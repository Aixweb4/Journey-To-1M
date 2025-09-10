// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ZombieFactory {
    // Zombie structure
    struct Zombie {
        string name;
        uint256 dna;
    }

    // Dynamic array of zombies
    Zombie[] public zombies;

    // Event when a new zombie is created
    event NewZombie(uint256 id, string name, uint256 dna);

    // Create a new zombie and push to array
    function _createZombie(string memory _name, uint256 _dna) internal {
        zombies.push(Zombie(_name, _dna));
        uint256 id = zombies.length - 1;
        emit NewZombie(id, _name, _dna);
    }

    // Public helper to create a zombie with simple dna
    function createRandomZombie(string memory _name) public {
        uint256 dna = uint256(keccak256(abi.encodePacked(_name, block.timestamp))) % 10**16;
        _createZombie(_name, dna);
    }

    // Get total zombies
    function getZombiesCount() public view returns (uint256) {
        return zombies.length;
    }
}
