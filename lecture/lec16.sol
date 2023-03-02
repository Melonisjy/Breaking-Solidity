// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0 < 0.9.0;

// 16강 - 상속 5 - 상속의 순서
contract Father{
    event FatherName(string name);
    function who() public virtual{
        emit FatherName("KimDaeho");
    }
}

contract Mother{
    event MotherName(string name);
    function who() public virtual{
        emit MotherName("leeSol");
    }
}

contract Son is Father, Mother{ // super 상속은 가장 오른쪽에 있는 컨트랙을 최신으로 반영하여 상속한다.
    function who() public override(Father, Mother){
        super.who();
    }
}