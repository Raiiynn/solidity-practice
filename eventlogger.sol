// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract EventLogger {
    event newMessage(address sender, string message);

    function sendMessage(string memory _msg) public {
        emit newMessage(msg.sender, _msg);
    }
}