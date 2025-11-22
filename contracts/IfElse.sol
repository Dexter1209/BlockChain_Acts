// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract IfElse {
    function dayPlan(string memory today) public pure returns (string memory) {
        if (keccak256(abi.encode(today)) == keccak256(abi.encode("Monday"))) {
            return "It's Monday, go to work!";
        } else if (keccak256(abi.encode(today)) == keccak256(abi.encode("Tuesday"))) {
            return "It's Tuesday, STILL GO TO WORK!";
        } else if (keccak256(abi.encode(today)) == keccak256(abi.encode("Friday"))) {
            return "THANK GOD IT'S FRIDAY!";
        } else {
            return "It's just a regular day.";
        }
    }

}