// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Animal {
    function sound() public pure virtual returns (string memory) {
        return "Sound";
    }
}

contract Dog is Animal {
    function sound() public pure override returns (string memory) {
        return "Bark";
    }
} 