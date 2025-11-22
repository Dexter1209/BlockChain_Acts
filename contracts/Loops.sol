// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Loops {
    function sumFor(uint n) public pure returns (uint sum) {
        for(uint i = 1; i <= n; i++){
            sum++;
        }
    }

    function orExample(bool hasCoupon, bool isVip) public pure returns (string memory) {
        if(hasCoupon || isVip) {
            return "Discount Applied";
        }

        return "Naur Discount";
    }

}