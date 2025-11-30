// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract FirstContract {
    function callComputation (address contractAddress, uint256 fnum, uint256 snum) external view returns (uint256 sum, uint256 diff, uint256 prod, uint256 quo) {
        (bool success, bytes memory data) = contractAddress.staticcall(
            abi.encodeWithSignature("computation(uint256,uint256)", fnum, snum)
        );
        require(success, "Compute Failed");
        return abi.decode(data, (uint256, uint256, uint256, uint256));
    }
}

contract SecondContract {
    function computation (uint256 fnum, uint256 snum) external pure returns (uint256 sum, uint256 diff, uint256 prod, uint256 quo) {
        sum = fnum + snum;
        prod = fnum * snum;  
        if (fnum >= snum) {
            diff = fnum - snum;
        } else {
            diff = 0; 
        }
        if (snum > 0) {
            quo = fnum / snum;
        } else {
            quo = 0;
        }
    }
}