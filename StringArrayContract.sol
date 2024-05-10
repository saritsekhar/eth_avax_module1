// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract nameArrayContract {
    string[] public nameArray;

    event NameAdded(string addedName);
    event NameExist(string result);

    function addName(string memory _newName) public {
        for (uint256 i = 0; i < nameArray.length; i++) {
            if (keccak256(bytes(nameArray[i])) == keccak256(bytes(_newName))) {
                revert("Name already exist in system");
            }
        }
        nameArray.push(_newName);
        emit NameAdded(_newName);
    }

    function checkName(string memory _name) public {
        require(bytes(_name).length > 0, "Name must not be empty");
        for (uint256 i = 0; i < nameArray.length; i++) {
             if (keccak256(bytes(nameArray[i])) == keccak256(bytes(_name))) {
               emit NameExist("Name found in system");
               return ;
         }
       
        }
        emit  NameExist("Name not found in system");
    }

    function nameIndex(uint256 _index1 , uint256 _index2) public view returns (string memory) {
        require(_index1 < nameArray.length && _index2 < nameArray.length, "Indexes out of bounds");

        string memory str1 = nameArray[_index1];
        string memory str2 = nameArray[_index2];
        
        string memory concatenatedString = string(abi.encodePacked(str1, str2));

       
        assert(bytes(concatenatedString).length > 15);

        return concatenatedString;
    }

    function getStringCount() public view returns (uint256) {
        return nameArray.length;
    }
}

