//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract Array{
    uint[] public arr; //动态长度数组
    uint[] public arr1 = [1,2,3,4,5]; //动态长度数组 初始长度有5位
    uint[5] public fixArray; //固定长度数组 默认每个元素都是0

    function get(uint _index) public view returns(uint){
        return arr1[_index];
    }
    //可以通过get函数返回整个数组，注意不要返回动态长度数组
    function getArray() public view returns(uint[] memory){
        return arr1;
    }
    
    function pushTest(uint _i) public{
    //push方法就是在数组末位添加一个-i整数
        arr.push(_i);
    }

    function popTest() public {
    //对于动态长度数组，pop就是弹出末位那个元素
        arr1.pop();
    }
    //数组有个属性叫做.length
    function getlength() public view  returns (uint) {
        return arr1.length;
    }

    function deleteArr(uint _index) public {
        delete arr1[_index]; //将数组指定位置恢复为初始值
    }

    function examples() external pure{
        //想要在内存中创建一个数组 只能创建一个固定长度数组 在函数执行期间有效
        uint[] memory a = new uint[](5); //创建一个有五个数组的Array
            a[0] = 10;
            a[1] = 20;
            a[2] = 30;
            a[3] = 40;
            a[4] = 50;
    }
}