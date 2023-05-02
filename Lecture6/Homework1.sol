// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Homework {
    uint public balanceSentInConstructor;
   
    // This line lets us add some Ether to this contract at deployment
    // It has to be marked payable
    constructor() payable {
        balanceSentInConstructor = msg.value;
    }

    // This function is a fallback function that lets this contract recieve Ether
    receive() payable external {}

    function returnEtherReceived() public view returns(uint256) {
        address contractAddress = address(this);
        uint256 contractBalance;

        assembly {
            contractBalance := balance(contractAddress)
        }
        return contractBalance;
    }
}
