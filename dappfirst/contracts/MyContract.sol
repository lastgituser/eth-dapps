pragma solidity ^0.4.0;

contract MyContract {
    uint balance;
    address owner;
    function MyContract() public {
        owner = msg.sender;
        balance = 0;
    }

    modifier ifClient() {
        require(msg.sender == owner);
        _;
    }

    function deposit(uint amount) ifClient public returns(uint) {
        balance += amount;
        return balance;
    }
    
    function getBalance() public returns(uint) {
        return balance;
    }
    
    function getOwner() public returns(address) {
        return owner;
    }
}
