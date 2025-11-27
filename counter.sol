// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Counter {
    uint public count = 0;
    
    function increment() public {
        count++;
    }

    function reset() public{
        count = 0;
    }

    function getCount() public view returns (uint) {
        return count;
    }
}