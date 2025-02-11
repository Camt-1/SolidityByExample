//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract IfElse{
    function foo(uint x) public pure returns(uint){
        //if后面()里面加判断条件 {}内写条件满足是会执行语句
        if (x < 10) {
            return 0;
        } else if (x < 20){
            return 1;
        } else {
            return 2;
        }
    }

    function ternaly(uint _x) public pure returns (uint){
        return _x < 10 ? 1 : 2; //当小于10时候返回1 其他的时候返回2
    }
}