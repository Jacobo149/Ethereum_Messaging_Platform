/**
Messaging contract to facilitate exchange of encrypted messages

Globals:
mapping of address to a mapping of address to string (possibly add indexing)

Functions:
sendmessage()
getmessages()
getmessagebyindex()


 */

pragma solidity ^0.8.21;

contract Messaging {
    mapping (address => mapping (address => string[])) public messages;

    function sendMessage(address _recipient, string memory _message) public {
        messages[msg.sender][_recipient].push(_message);
    }

    function getMessages(address _sender, address _recipient) public view returns (string[] memory) {
        return messages[_sender][_recipient];
    }

    function getMessageByIndex(address _sender, address _recipient, uint _index) public view returns (string memory) {
        return messages[_sender][_recipient][_index];
    }
}