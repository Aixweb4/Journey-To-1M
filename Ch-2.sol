// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionsExample {
    uint256 public number = 42;

    // view function - reads state, doesn't modify
    function getNumber() public view returns (uint256) {
        return number;
    }

    // pure function - doesn't read or write state
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // function with return values
    function split(uint256 value) public pure returns (uint256 half, uint256 rest) {
        half = value / 2;
        rest = value - half;
    }

    // function that modifies state
    function setNumber(uint256 _num) public {
        number = _num;
    }
}
