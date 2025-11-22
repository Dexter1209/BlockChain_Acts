// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Day5 {
    function tempCelsiusChecker (int celsius) public pure returns (string memory) {
        if (celsius >= 100) {
            return "Boiling Point!";
        } else if (celsius <= 0) {
            return "Freezing Point!";
        } else {
            return "Neither!";
        }
    }

    function gradeEvaluator(uint grade) public pure returns (string memory) {
        if (grade >= 90) {
            return "A";
        } else if (grade >= 80) {
            return "B";
        } else if (grade >= 70) {
            return "C";
        } else {
            return "F";
        }
    }

    function speedChecker(uint speed) public pure returns (string memory) {
        if (speed > 100) {
            return "Overspeeding!";
        } else {
            return "Within speed limit.";
        }
    }

    function ageAccess(uint age) public pure returns (string memory) {
        if (age < 13) {
            return "Not allowed!";
        } else if (age < 18) {
            return "Must have a guardian!";
        } else {
            return "Allowed!";
        }
    }

    function sumUp(uint N) public pure returns (uint sum) {
        for (uint i = 1; i <= N; i++) {
            sum += i;
        }
    }

    function evenNumbers(uint N) public pure returns (uint sum) {
        for (uint i = 1; i <= N; i++) {
            if (i % 2 == 0) {
                sum += i;
            }
        }
    }
}