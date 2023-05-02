// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

contract Homework6 {
    uint public balanceSentInConstructor;
    // This line lets us add some Ether to this contract at deployment
    // It has to be marked payable
    constructor() payable {
        balanceSentInConstructor = msg.value;
    }

    // This function is kinda fallback that lets this contract accepts Ether when function that does not exist is called but value was sent along.
    receive() payable external {}

    function returnEtherReceived() public payable returns(uint256 val) {
        assembly {
            val := callvalue()
        }
        return val;
    }
}






