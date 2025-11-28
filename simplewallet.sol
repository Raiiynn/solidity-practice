// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract SimpleWallet is ReentrancyGuard {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable{}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function withdraw(uint amount) public {
        require(msg.sender == owner, "Only owner can call this");
        payable(msg.sender).transfer(amount);
    }
}