// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract lec7 {
    /*
    storage: 대부분의 변수와 함수들이 저장되며, 영속적으로 저장이 되어 가스 비용이 크다.
    memory: 함수의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장이 된다.
            그러나, storage 처럼 영속적이지 않고, 함수 내에서만 유효하기에 storage보다 가스 비용이 적다.
    calldata: 주로 external function의 파라미터에서 사용이 된다.
    stack: EVM(Ethereum Virtual Machine)에서 stack data를 관리할 때 쓰는 영역인데 1024Mb로 제한적이다.
    */
    
    // function -string.
    function get_string(string memory _str) public pure returns(string memory) {
        return _str;
    }

    function get_uint(uint256 _ui) public pure returns(uint256) {
    return _ui;
    }
    
}