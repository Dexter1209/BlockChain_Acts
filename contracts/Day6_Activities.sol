// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Day6_Act1 {
    uint[3] public favoriteNumbers = [uint(1),2,3];
    function setValue(uint index, uint value) external {
        require (index < favoriteNumbers.length, "Index out of range");
        favoriteNumbers[index] = value;
    }
    function getValue(uint index) external view returns (uint x) {
        require (index < favoriteNumbers.length, "Index out of range");
        return favoriteNumbers[index];
    }
}

contract Day6_Act2 {
    uint[] public scores;
    function addScore(uint value) external {
        scores.push(value);
    }
    function removeLast() external {
        scores.pop();
    }
    function getScore(uint index) external view returns (uint x) {
        require (index < scores.length, "Index out of range");
        return scores[index];
    }
    function getTotalScores() external view returns (uint) {
        return scores.length;
    }
}

contract Day6_Act3 {
    mapping (address => uint) public balances;
    function deposit(uint amount) external returns (string memory) {
        require(amount > 0, "Must indicate an amount");
        balances[msg.sender] += amount;
        return "Deposit successful!";
    }
    function getBalance(address user) external view returns (uint) {
        return balances[user];
    }
    function resetMyBalance() external {
        balances[msg.sender] = 0;
    }
}

contract Day6_Act4 {
    struct Student {
        string name;
        uint age;
        bool enrolled;
    }
    Student[] public students;

    function addStudent(string memory _name, uint _age, bool _enrolled) external {
        students.push(
            Student({
                name: _name,
                age: _age,
                enrolled: _enrolled
            })
        );
    }
    function getStudent(uint index) external view returns (string memory, uint, bool) {
        return (
            students[index].name,
            students[index].age,
            students[index].enrolled
        );
    }
    function getTotalStudent() external view returns (uint) {
        return students.length;
    }
}