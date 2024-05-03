// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract smartContract {
    address public owner;
    uint public value;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint _newValue) public {
        // Require that only the owner can set the value
        require(msg.sender == owner, "Only the owner can set the value");
        
        // Value must be greater than zero
        require(_newValue > 0, "Value must be greater than zero");
        
        value = _newValue;
    }

    function getValue() public view returns (uint) {
        return value;
    }

    function assertExample(uint input1 , uint input2) public pure returns (uint) {


        // Assert that x is not equal to y
        assert(input1 != input2);

        return input1;
    }

    function revertExample(uint _input) public pure returns (uint) {
        // Revert if input is less than 10
        if (_input < 10) {
            revert("Input must be greater than or equal to 10");
        }

        return _input;
    }
}
