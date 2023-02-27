// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// 4강 - Function 정의
contract lec4 {

    uint256 public a = 3;
    // 1. parameter와 return 값이 없는 function
    function changeA1() public {
        a = 5;
    }

    // 2. parameter는 있고, return 값이 없는 function
    function changeA2(uint256 _value) public {
        a = _value;
    }

    // 3. parameter와 return 값이 있는 function
    function changeA3(uint256 _value) public returns(uint256) {
        a = _value;
        return a;
    }
}
