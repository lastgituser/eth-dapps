pragma solidity ^0.4.0;

contract HelloWorld {
    uint balance;
    address client;
    
    
    function HelloWorld() {
        client = msg.sender;
        balance = 0;
    }
    
    function deposit(uint value) returns(bool) {
        if (client == msg.sender) {
            balance += value;
            return true;
        } else {
            return false;
        }
    }
    
    function getBalance() returns(uint) {
        return balance;
    }
}
