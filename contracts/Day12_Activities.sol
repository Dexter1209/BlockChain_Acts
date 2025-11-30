// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PesoToETH {
    AggregatorV3Interface internal ethUsdFeed;
    uint256 public constant USD_PHP = 56e8; // Constant PHP

    constructor() {
        ethUsdFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    }

    function getEthUsdPrice() public view returns (int256) {
        (, int256 price,,,) = ethUsdFeed.latestRoundData();
        return price;
    }
    // ACTIVITY 1 - USD->ETH
    function computeUSDToETH(uint256 usdAmount) public view returns (uint256) {
        int256 ethUsd = getEthUsdPrice();
        return (usdAmount * 1e8) / uint256(ethUsd);
    }
    // ACTIVITY 2 - ETH->PHP
    function ethToPeso(uint256 ethAmountWei) public view returns (uint256) {
        int256 ethUsd = getEthUsdPrice();
        uint256 ethAmount = ethAmountWei / 1e18;
        uint256 phpAmount = (ethAmount * uint256(ethUsd) * USD_PHP) / 1e16;
        return phpAmount;
    }
}
