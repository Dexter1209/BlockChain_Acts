// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

library MathLib{
    function add(uint a, uint b) internal pure returns (uint) {
        return a+b;
    }
    function square(uint a) internal pure returns (uint) {
        return a*a;
    }
}

contract Calculator{
    using MathLib for uint;

    function getSum(uint x, uint y) external pure returns(uint) {
        return MathLib.add(x,y);
        
    }
}