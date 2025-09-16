Smart Contract - Capy's Club
Description
This project contains smart contracts developed for HackMeridian, a hackathon focused on blockchain solutions and decentralized technologies.

Project Structure
smart-contract-hackmeridian/

contracts/ — Smart contracts

scripts/ — Deployment and interaction scripts

test/ — Automated tests

hardhat.config.js — Hardhat configuration

package.json — Project dependencies

Prerequisites

Node.js (version 16 or higher)

npm or yarn

MetaMask or another Web3 wallet

Installation
Clone the repository:
git clone <repository-url>
cd smartcontract--hackmeridian

Install dependencies:
npm install

Set up environment variables:
cp .env.example .env

Edit the .env file with your settings

Configuration
Environment Variables
Create a .env file in the project root with the following variables:

PRIVATE_KEY=your_private_key_here
INFURA_PROJECT_ID=your_infura_project_id
ETHERSCAN_API_KEY=your_etherscan_api_key

Usage
Compilation
npm run compile

Testing
npm run test

Deployment

Local Network (Hardhat): npm run deploy:local

Testnet (Sepolia): npm run deploy:sepolia

Mainnet: npm run deploy:mainnet

Smart Contracts
Main Contracts

ContractName.sol: Description of the main contract

Token.sol: ERC-20/ERC-721 token implementation

Governance.sol: Decentralized governance system

Features

Creation of a Custom Non-Fungible Token (NFT)

Owner-Based Access Control (Ownable)

Sequential NFT Minting

Testing
The project includes comprehensive tests for all contracts:

Run all tests: npm run test

Run tests with coverage: npm run test:coverage

Run specific tests: npm run test -- --grep "ContractName"

Deployment and Verification
Automated Deployment
The project uses automated scripts for deployment:

Deploy to a specific network: npx hardhat run scripts/deploy.js --network sepolia

Contract Verification

Verify contract on Etherscan:
npx hardhat verify --network sepolia DEPLOYED_CONTRACT_ADDRESS "Constructor arg 1" "Constructor arg 2"

Security
Best Practices

Use of OpenZeppelin for standard contracts

Implementation of pausable mechanisms in critical contracts

Rigorous input validation

Protection against reentrancy attacks

Contribution

Fork the project

Create a feature branch (git checkout -b feature/AmazingFeature)

Commit your changes (git commit -m 'Add some AmazingFeature')

Push to the branch (git push origin feature/AmazingFeature)

Open a Pull Request

License
This project is licensed under the MIT License — see the LICENSE file for details.

Contact
Developer: Adama Augusto Ndiaye
Email: ndiayeaan1@gmail.com

Twitter: @Ndiaye___

Additional Resources

Hardhat Documentation

OpenZeppelin Contracts

Solidity Documentation

Ethereum Development Documentation

Roadmap

Initial project setup

Implementation of main contracts

Complete unit testing

Testnet deployment

Security audit

Mainnet deployment

Web interface (dApp)

Developed for HackMeridian 2025 🚀
