//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract Variables{
    //局部变量local存储在函数内存中,调用的时候才有
    //状态变量state存储在链上，在函数外部、合约内部声明，修改状态变量要消耗GAS 
    //global默认的全局变量，整个以太坊自带的变量
    string public text = "hello"; //存在区块链上的，状态变量
    uint public numa = 88; //存在区块链上的，状态变量

    function dosomething() public view returns(uint,address) { 
        uint numb = 99; 
        numb += 1;
        //局部变量，就在调用这个函数时候才有这个变量
        
        uint time = block.timestamp; //block.timestamp 获取当前区块的时间戳 全局变量 是据1970年到目前的秒数

        address sender = msg.sender; //msg.sender 调用这个函数的地址 全局变量
        return (time,sender);
    }
}