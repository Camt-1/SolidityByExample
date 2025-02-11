//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

//抛出一个错误可以通过require，revert和assert
// require用于验证某个输入或者条件是否满足
// revert和require类似
// assert检查输入结果是否是想要的

contract testError {
// Require should be used to validate conditions such as: Require关键字用于验证以下条件
        // - inputs 输入
        // - conditions before execution 执行前的条件是否满足
        // - return values from calls to other functions 其他函数的返回值是否满足条件
    function testRequire(uint _i) public pure{
        require(_i>10,"i must greated than Ten!");
    }

    function testRevert(uint _i) public pure{
        // Revert is useful when the condition to check is complex. 当检查条件很复杂的时候使用Revert
        // This code does the exact same thing as the example above 这个代码执行起来和上面一样
        if(_i <= 10) {
            revert("input must grester than 10!");
        }
    }

    uint public num =20;
    function testAssert() public view{
        // Assert should only be used to test for internal errors,and to check invariants.
        //这个关键词智能用于测试内部变量和不变量

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num

        assert (num == 0);
    }
}