//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract Todos{

    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;
    //建立一个名为学生的数组结构 里面有三个不同的属性（名字，分数，是否过了）
    struct students{
        string name;
        uint grade;
        bool pass;
    }
    students[] stu;
    // 如果public修饰符时students[] public stu; 就不需要创建下面的get函数

    function set(string calldata _name,uint _grade,bool _pass) public {
        //第一种往里面传元素的方法
        stu.push(students(_name,_grade,_pass));
        //第二种通过关键字往里传参数
        stu.push(students({grade:_grade,name:_name,pass:_pass}));
        //第三种先通过一个memory方法建立一个空的变量
        students memory Mystu;
        Mystu.name = _name;
        Mystu.grade = _grade;
        Mystu.pass = _pass;
        stu.push(Mystu);
    }
    //当变量前加了一个public函数修饰符的时候 等于自动帮他创建了一个get函数
    function get(uint _index) public view returns(string memory name,uint grade,bool pass){
        return(stu[_index].name,stu[_index].grade,stu[_index].pass);
    }

    function updateName(uint _index,string calldata _name) public {
        students storage newstudent = stu[_index];
        newstudent.name = _name;
        //stu[_index].name = _name;等价于上面
    }
    
}