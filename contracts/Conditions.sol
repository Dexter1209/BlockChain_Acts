// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Conditions {
    bool public isActive;
    function isLessThan(uint a, uint b) public pure returns (bool) {
        return a < b;
    }
    function isGreaterThan(uint a, uint b) public pure returns (bool) {
        return a > b;
    }
    function isLessOrEqual(uint a, uint b) public pure returns (bool) {
        return a <= b;
    }
    function isGreaterOrEqual(uint a, uint b) public pure returns (bool) {
        return a >= b;
    }
    function isEqual(uint a, uint b) public pure returns (bool) {
        return a == b;
    }
    function isNotEqual(uint a, uint b) public pure returns (bool) {
        return a != b;
    }
}