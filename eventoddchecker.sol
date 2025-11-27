// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract EventOddChecker {
    function isEven(uint num) public pure returns (bool) {
        return num % 2 == 0;
    }

    function loopSum(uint n) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;
    }
}