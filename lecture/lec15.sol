// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0 < 0.9.0;

// 15강 - 상속 4 - super
contract Father {
    event FatherName(string name);
    function who() public virtual{
        emit FatherName("KimDaeho");
    }
}

contract Son is Father {
    event SonName(string name);
    function who() public override{
        super.who();
        emit SonName("KimJIn");
    }
}