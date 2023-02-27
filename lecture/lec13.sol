// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// 13강 - event 1 - 정의
contract lec13 {
    event info(string name, uint256 money);

    function sendMoney() public {
        emit info("KimDaeJin", 1000);
    }
}
