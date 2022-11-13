# ERC-20 Compliant Fungible Token
---------------------

This project creates an ERC-20 Compliant Fungible Token called KaseiCoin (ticker: KAI). The token is launched through a crowdsale and uses three smart contracts, token creation, token crowdsale, and a deployer contract that deploys both the token creation, and the token crowdsale at the same time. The crowdsale contract allows users to send ether and in return receive KAI. The contract mints the tokens automatically and distributes the tokens to the purchasing wallet in one transaction.

## Technologies

* [Solidity v0.5.0](https://docs.soliditylang.org/en/v0.5.0/index.html)
* [Remix IDE](https://remix-project.org/)
* [Ganache](https://trufflesuite.com/ganache/)
* [MetaMask](https://metamask.io/)

---

## Installation Guide

There is no necessary installation for this project. You can use a browser to run Remix, and the solidity compiler is included. You do not have to test the functionality of this project using Ganache as the provider for a local blockchain, or MetaMask for wallet functionality. You can use the integrated remix environments to test this project. If you wish to use a local blockchain and a wallet provider [proceed to this YouTube video for a walkthrough](https://www.youtube.com/watch?v=jLFXONkA4KM).

---

## Images

For a live demo of the smart contracts through Remix IDE and MetaMask proceed to the [videos folder](https://github.com/rrmangum/ERC20_Token_Crowdsale/tree/main/Videos) within this repo and download the mp4 files.

### KaseiCoin Token Contract Compiled
![KaseiCoin_Compiled](https://github.com/rrmangum/ERC20_Token_Crowdsale/blob/main/Images/KaseiCoin_Compiled.png?raw=true)

### KaseiCoin Crowdsale Compiled
![KaseiCoinCrowdsale_Compiled](https://github.com/rrmangum/ERC20_Token_Crowdsale/blob/main/Images/KaseiCoinCrowdsale_Compiled.png?raw=true)

### KaseiCoin Crowdsale Deployer Compiled
![KaseiCoinCrowdsaleDeployer_Compiled](https://github.com/rrmangum/ERC20_Token_Crowdsale/blob/main/Images/KaseiCoinCrowdsaleDeployer_Compiled.png?raw=true)

### Deployed Contracts
![DeployedContracts](https://github.com/rrmangum/ERC20_Token_Crowdsale/blob/main/Images/Contracts_Deployed.png?raw=true)

### Ganache Transactions
![GanacheProof](https://github.com/rrmangum/ERC20_Token_Crowdsale/blob/main/Images/Ganache_Contracts_Deployed.png?raw=true)

## Contributors

Ryan Mangum - [LinkedIn](https://www.linkedin.com/in/ryanrmangum/) | rrmangum@gmail.com

---

## License

[MIT License](https://choosealicense.com/licenses/mit/)

Copyright (c) [2022] [Ryan Mangum]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
