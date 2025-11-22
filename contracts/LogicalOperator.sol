// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract LogicalOperators {
    function andExample(uint age, bool hasTicket) public pure returns (string memory) {
        if(age >= 18 && hasTicket) {
            return "Entry Allowed";
        }

        return "Entry Denied";
    }

    function orExample(bool hasCoupon, bool isVip) public pure returns (string memory) {
        if(hasCoupon || isVip) {
            return "Discount Applied";
        }

        return "Naur Discount";
    }

}