// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForceFaker {
    address payable public target;

    constructor(address payable _target) payable {
        require(msg.value > 0, "Need to send some ETH");

        target = _target;
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
    
    function destroy() public {
        selfdestruct(target);
    }
}