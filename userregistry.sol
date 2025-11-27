// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract UserRegistry {
    struct User {
        string name;
        uint age;
    }

    mapping(address => User) public users;

    function register(string memory _name, uint _age) public {
        users[msg.sender] = User(_name,_age);
    }

    function getUser() public view returns (string memory, uint) {
        User memory user = users[msg.sender];
        return (user.name, user.age);
    }
}