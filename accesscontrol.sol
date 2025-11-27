// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract AccessControl {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Access Denied");
        _;
    }

    function doAdminTask() public onlyOwner {
        //Only owner can do this.
    }
}