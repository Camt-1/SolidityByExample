//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract EtherUnits{
    //1eth = 10**18 Wei,Wei是以太坊上的gas的最小单位
    uint public oneWei = 1 wei;
    bool public isOneWei = (1 wei == 1); //==是判断两者是否相等
    //结果是true， 1就是1 wei

    uint public oneEther = 1 ether;
    bool public isOneEther = (1 ether == 10**18 wei); 
    //1e18、10**18和1000000000000000000的值相等
}