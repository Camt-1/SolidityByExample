//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract removeArrary{
    uint[] public Arr = [1,2,3,4,5,6];
    // [1, 2, 3] -- remove(1) --> [1, 3, 3] --> [1, 3]
    // [1, 2, 3, 4, 5, 6] -- remove(2) --> [1, 2, 4, 5, 6, 6] --> [1, 2, 4, 5, 6]
    // [1, 2, 3, 4, 5, 6] -- remove(0) --> [2, 3, 4, 5, 6, 6] --> [2, 3, 4, 5, 6]
    // [1] -- remove(0) --> [1] --> []
    function Remove(uint _index) public{
        require(_index < Arr.length,"the index is lenger than the length of Array");

        for(uint i = _index; i < Arr.length-1;i++){
            Arr[i] = Arr[i+1];
        }

        Arr.pop();
    }

    function get() public view returns(uint[] memory){
        return Arr;
    }
}