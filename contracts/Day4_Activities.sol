// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Day4 {
    function tempConvert(uint celsius) public pure returns (uint) {
        return (celsius * 9) / 5 + 32;
    }
    function hourConvert(uint hour) public pure returns (uint) {
        return (hour * 60 * 60);
    }
    function numAverage(uint num1, uint num2, uint num3) public pure returns (uint) {
        return (num1 + num2 + num3) / 3;
    }
    function ethConvert(uint eth) public pure returns (uint) {
        return (eth * 274506) / 100;
    }
}