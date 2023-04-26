// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract deleteItems {

    uint256[] public items = [0,1,2,3,4,5,6,7,8,9,10,11,12]; 
 
    function randomNumber() public view returns(uint) {
        return uint(keccak256(abi.encodePacked(block.prevrandao, block.timestamp, items.length)));
    }

    function deleteElement() external {
        uint length = items.length;
        uint index = randomNumber() % length;
        items[index] = items[length - 1];
        items.pop();
    }
    
    function getArray() external view returns(uint[] memory){
        return items;
    }


}