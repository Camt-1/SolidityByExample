//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract ForWhile{
    function addtotal() public pure returns(uint){
        //定义一个数，初始为0
        uint numa;
        //
        for(uint i = 0; i < 50; i++){
            numa += i;
        }
        return numa;
    }

    function loop() public pure{
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }

        uint j;
        while(j < 10){
            j++;
        }
    }
}