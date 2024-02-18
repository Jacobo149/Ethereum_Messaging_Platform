/**
Storage contract to bridge messaging contract and servive such as IFPS

Globals:
mapping of filehash to filedata (bytes32 to bytes)

Functions:
storefile()
retrievefile()

 */

pragma solidity ^0.8.21;

contract Storage {
    mapping (bytes32 => bytes) public files;

    function storeFile(bytes32 _fileHash, bytes memory _fileData) public {
        files[_fileHash] = _fileData;
    }

    function retrieveFile(bytes32 _fileHash) public view returns (bytes memory) {
        return files[_fileHash];
    }
}