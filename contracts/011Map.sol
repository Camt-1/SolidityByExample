//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract Mapping{
    //mapping的语法是mapping（keyvalue关键值 => valueType某个值类型） 一一匹配起来
    // keyvalue可以是string bool int address bytes 或者是某个已经部署的合约
    // valuetype可以是多种类型变量甚至是另一种mapping或者是一个array(动态数组)
    
    mapping(address => uint) public myMap; //定义了一个map方法，将一个地址和一个数字匹配起来

    function getbyAdd(address _add) public view returns(uint){
    //返回的是这个mapping方法对应的数，如果没有则返回默认值0
        return myMap[_add];
    }

    function set(address _add,uint _i) public {
    //更新每一个地址对应的数
        myMap[_add] = _i;
    }
    function deleteNum(address _add) public{
    //delete就是把每个地址匹配的值恢复为初始值
        delete myMap[_add];
    }
}