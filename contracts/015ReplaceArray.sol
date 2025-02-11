//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract ArrayReplaceFromEnd {
    uint[] public arr = [1,2,3,4,5,6];

    function remove(uint _index) public {
        //[1,2,3,6,5,6]
        arr[_index] = arr[arr.length - 1];

        arr.pop();
        //pop之后是[1,2,3,6,5]
    }

    function get() public view returns(uint[] memory){
        return arr;
    }

}