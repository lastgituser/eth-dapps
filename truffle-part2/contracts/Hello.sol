pragma solidity ^0.4.0;

contract Hello {
    string private _name;
    mapping ( address => uint256 ) public balances ;

    constructor ( string name ) public {
        _name = name;
        balances [ msg.sender ] = 1000 ;
    }

    function setName ( string name ) public {
        _name = name ;
    }

    function getName ( ) public view returns ( string ) {
        return _name ;
    }
}
