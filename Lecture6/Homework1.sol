// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

contract Homework6 {
    uint public balanceSentInConstructor;
    // This line lets us add some Ether to this contract at deployment
    constructor() payable {
        balanceSentInConstructor = msg.value;
    }

    // This function is a fallback that lets this contract recieve Ether 
    receive() payable external {}

    function returnEtherReceived() public payable returns(uint256 val) {
        assembly {
            val := callvalue()
        }
        return val;
    }
}






