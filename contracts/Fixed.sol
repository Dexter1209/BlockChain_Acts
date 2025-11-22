// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Fixed {
    uint[3] public numbers = [uint(1),2,3];
    function getValue(uint index) external view returns (uint x) {
        require (index < numbers.length, "Index out of range");
        return numbers[index];
    }
    function setValue(uint index, uint value) external {
        require (index < numbers.length, "Index out of range");
        numbers[index] = value;
    }
    function getLength() external view returns (uint) {
        return numbers.length;
    }
}