// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FunctionArray {
    function arrayExample() public pure returns (uint) {
        uint[5] memory numbers = [uint(1),2,3,4,5];
        return numbers[0];
    }
    function arrayParameter(uint[] memory numbers, uint index, uint value) public pure returns (uint) {
        return numbers[index];
    }
}