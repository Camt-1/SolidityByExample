//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract Primitives{
    bool public boo; //bool 是solidity中的逻辑符号（true/false），初始默认值是false

    uint8 public numa = 3; //uint8 是非负整数类型，最大值是 2**8-1；以此类推uint16 的 0 到 2**16-1

    uint public numb = 5654598944;  //uint 是uint256缩写（0，2**256-1)

    int8 public numi = -128; //int 是整数类型，最小值是 -2**7 最大值是 2**7-1

    int public numj = -2354545345641; //int 最小值是 -2**255 最大值是 2**255-1

    address public addr; //address 是地址

    uint public x;

    bytes1 public a = 0x7b;

    int public intmax = type(int).max; //通过内置的type函数获取当前的类型变量的最大值最小值
}