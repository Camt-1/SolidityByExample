//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;
contract Immutable{
    //变量前加了immutable修饰符说明他只能被construct这个初始化函数修改，然后就再也不能修改了
    //immutable后面的值要大写
    address public immutable My_ADDRESS;
    uint public immutable Numb;
    //constructor是指的是合约部署时跟着初始化的一个函数
    constructor(){
        My_ADDRESS = msg.sender;
        Numb = 200;
    }
}