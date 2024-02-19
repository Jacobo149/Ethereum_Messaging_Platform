# Ethereum_Messaging_Platform
Ethereum Messaging Platform

Secure Messaging Platform built on the Ethereum chain.  
Encrypted messages are confirmed on Ethereum, and able to be decrypted by the receiver.  
First Implementation will have a command line interface, after rigorous testing, will implement react front end,
connecting via metamask.  

## Tech Stack
Hardhat Backend
Implement messaging with python, C, or javascript
React Frontend

## Smart Contract Design
Identity contract: User identities and authentication. Can create/manage account.  
Messaging Contract: Facilitates exchange of encrypted messages. Encryption, dycryption, storage. Can be stored as encrypted IPFS hashes or encrypted data on-chain.  
Storage Contract: Bridge between messaging contract and something like IPFS. Users can securely store/retrieve media files associated with their messages. 

## Backend Design
Hardhat, will provide a command line interface for the chat as a testing basis. Will create libraries to call contract functions before setting up a proper client/server structure.

Reference: https://medium.com/coinmonks/building-a-web3-instant-messaging-application-3308dedd8b63

## TODO
- Test Smart Contracts
- Start to build backend
    - Create Alchemy RPC connection to testnet
    - deploy.js
    - contract_library.js
    - hardhat.config.js
    - main.js?
- Build out command-line interface before frontend implementation
    - cmd_interface.js