// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract A {
    uint256 public a = 5;

    function change(uint256 _value) public {
        a = _value;
    }
}

contract B {
    A instance = new A();

    function get_a() public view returns(uint256) {
        return instance.a();
    }
    function change_A(uint256 _value) public {
        instance.change(_value);
    }
}