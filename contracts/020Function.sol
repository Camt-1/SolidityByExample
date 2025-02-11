//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract Function{
    // 使用pure时候不需要读取区块链上的任何变量，不消耗gas
    function returnMany() pure public returns(uint,bool,uint) {
        return(1,true,22);
    }
    //当需要读取区块链上的变量的时候，用view，不消耗gas
    //可以给返回的值设置前缀
    function returnMany1() pure public returns(uint x,bool y,uint z) {
        return(1,true,22);
    }
    // 当给返回的参数指定名称的时候，可以用参数 = 值的方式来取代return
    function returnMany2() pure public returns(uint x,bool y,uint z) {
        y = true;
        x = 11;
        z = 22;
    }
    //内部调用函数也可以用pure
    function destructingAssignments() public pure returns(uint,bool,uint,uint,uint) {
        (uint i,bool b,uint j) = returnMany(); //这三个值直接调用函数 i =1 b = true j =22
        (uint x, ,uint y) = (4,5,6); //x = 4  y = 6
        return (i,b,j,x,y);
    }
    //数组可以作为输入和返回参数，Map这个类型不能作为输入参数
    function arrinput(uint[] memory _arr) public {}
    uint[] public arr;
    function getarr() public view returns(uint[] memory) {
        return arr;
    }
}
