pragma solidity ^0.4.0;

contract HelloWorld {
    string private _name;

    constructor (string name) public {
        _name = name;
    }

    function setName (string name) public view returns (string) {
        _name = name;
    }

    function getName () public view returns (string) {
        return _name;
    }
}
