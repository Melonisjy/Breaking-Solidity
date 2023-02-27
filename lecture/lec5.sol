// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// 5강 - Function 2(public, private, internal, external)
contract lec5 {
    /*
    function 이름 () public { // (public, private, internal, external 중 변경 가능)
        // 내용
    }
    */

    /*
    public: 모든 곳에서 접근 가능
    private: 오직 private이 정의된 자기 컨트랙트에서만 접근 가능(private이 정의된 컨트랙트를 상속 받은 자식도 불가능)
    internal: private처럼 오직 internal이 정의된 자기 컨트랙트에서만 가능하고, internal이 정의된 컨트랙트를
    external: public처럼 모든 곳에서 접근 가능하나, external이 정의된 자기 컨트랙트 내에서 접근 불가
    */

    // 1. public
    uint256 public a = 5;

    // 2. private
    uint256 private a2 = 5;
}

contract Public_example {
    uint256 public a = 3;
    
    function changeA(uint256 _value) external {
        a = _value;
    }

    function get_a() view external returns (uint256) {
        return a;
    }
}

contract Public_example_2 {
    Public_example instance = new Public_example();

    function changeA_2(uint256 _value) public{
        instance.changeA(_value);
    }
    function use_public_example_a() view public returns (uint256) {
        return instance.get_a();
    }
}
