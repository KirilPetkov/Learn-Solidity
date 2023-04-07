// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State Variables
    int256 public myInt = 1; // this Can be negative like any type of number
    uint public myUint = 1; //data type
    uint256 public myUint256 = 1; //data type
    uint8 public myUint8 = 1; //data type

    string  public myString = "my cat looks like a dog"; //string data type 
    bytes32 public myBites32 = "Hello, world!"; //string data type


    address public myAddress = 0x768A474BaD054F17A71b7dbAB62c765C5c37904a; // different types of variabless in different data types
    //data type address

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, world");


    // Local Variables
    function getValue() public pure returns(uint){
        uint value = 1 ;
        return value;
    }
}
