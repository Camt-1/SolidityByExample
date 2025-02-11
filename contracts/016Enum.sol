//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract EnumTest {
    enum Status {Pending,Shipped,Accepted,Rejected,Canceled}
    //Pending=0,Shipped=1,Accepted=2,Rejected=3,Canceled=4
    //枚举体的默认缺省值就是0，这个例子里就是Pending
    Status public status;

    function get() public view returns(Status) {
        return status;
    }
    
    function set(Status _status) public{
        //传一个类型为Status 状态
        status = _status;
    }

    function Cancel() public{
        status = Status.Canceled;
        //通过这种方式来修改枚举体
    }

    function reset() public{
        delete status;
        //枚举体恢复初始值
    }
}