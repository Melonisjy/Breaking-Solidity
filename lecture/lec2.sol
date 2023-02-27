// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// 2강 - Data Type
contract lec2 {
    // data type
    // boolean, bytes, address, uint

    // reference type
    // string, Arrays, struct

    // mapping type

    // boolean : true / false
    bool public b = false;

    // ! (NOT) || (OR)  ==  && (AND) 
    bool public b1 = !false;
    bool public b2 = false || true;
    bool public b3 = false == true;
    bool public b4 = false && true; 

    // bytes 1 ~ 32
    bytes4 public bt = 0x12345678;
    bytes public bt2 = "STRING";

    // address : 
    address public addr = 0xddaAd340b0f1Ef65169Ae5E41A8b10776a75482d;

    // int vs uint
    
    // int8
    // -2**7 ~ 2**7 -1
    int8 public it = 4;

    //uint8
    // 0 ~ 2**8-1
    uint256 public uit = 132213;

    uint8 public uit2 = 25;
    

}
