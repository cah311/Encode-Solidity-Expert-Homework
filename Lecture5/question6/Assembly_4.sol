// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Scope {
    uint256 public count = 10;

    function increment(uint256 num) public {
        // Modify state of the count variable from within
        // the assembly segment
        assembly {
            let x := sload(count.slot)
            for {let i := 0 } lt(i,num) {i := add(i,1)} {
                x := add(x,1)
            }
            sstore(count.slot,x)
        }
    }
}
