/**
Identity contract, used to provide account creation and management

Globals:
users: mapping of address to username

Functions:
setusername()
getusername()

 */

pragma solidity ^0.8.21;

contract Identity {
    mapping (address => string) public users;

    function setUserName(string memory _username) public {
        users[msg.sender] = _username;
    }

    function getUserName(address _userAddress) public view returns (string memory) {
        return users[_userAddress];
    }
    
}