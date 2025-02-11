//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract Constants {
    // constant修饰符表示这个变量是不可修改的，这样存储的时候可以减少很多gas消耗
    // constant后面的值要大写
    address public constant MyAddress = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint256 public constant MyUint = 123;
}