// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract StringComparison {
    enum Day {Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday}
    function dayPlan(Day today) public pure returns (string memory) {
        if (today == Day.Monday) {
            return "It's Monday, go to work!";
        } else if (today == Day.Tuesday) {
            return "It's Tuesday, STILL GO TO WORK!";
        } else if (today == Day.Friday) {
            return "THANK GOD IT'S FRIDAY!";
        } else {
            return "It's just a regular day.";
        }
    }

}