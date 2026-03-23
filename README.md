#  Farm-To-Table Blockchain System

## Overview

The **Farm-To-Table Blockchain System** is a decentralized application (DApp) designed to bring transparency and trust to the agricultural supply chain.

It allows users to track products from farmers to consumers using blockchain technology, ensuring data cannot be altered or tampered with
##  Features

*  Add agricultural products to blockchain
*  Track product details anytime
*  Secure product purchase using MetaMask
*  Tamper-proof data using smart contracts
*  Simple and user-friendly interface
##  Technologies Used

* **Ethereum** – Blockchain platform
* **Solidity** – Smart contract language
* **Truffle** – Development framework
* **Ganache** – Local blockchain
* **Web3.js** – Blockchain interaction
* **HTML, CSS, JavaScript** – Frontend
* **MetaMask** – Wallet integration

##  Project Structure

```
Farm-To-Table-Blockchain/
│
├── contracts/
│     AgricultureTraceability.sol
│
├── migrations/
│     1_initial_migration.js
│     2_deploy_contracts.js
│
├── build/
│
├── index.html
│
├── truffle-config.js
│
└── README.md
```

---

##  Team Responsibilities

###  Smart Contract Developer

* Develops and deploys smart contracts
* Handles blockchain logic

###  Frontend Developer

* Designs UI using HTML, CSS
* Implements user interactions

###  Blockchain Integration Developer

* Connects frontend with blockchain
* Handles MetaMask and transactions



##  Setup Instructions

### 1️. Install Requirements

* Install **Node.js**
* Install **Truffle**
* Install **Ganache**
* Install **MetaMask Extension**

---

### 2️ Clone Repository

```
git clone https://github.com/YOUR_USERNAME/Farm-To-Table-Blockchain.git
cd Farm-To-Table-Blockchain
```

---

### 3️ Install Dependencies

```
npm install
```

---

### 4️ Start Ganache

* Open Ganache
* Start workspace

---

### 5️ Compile Contracts

truffle compile


### 6️ Deploy Contracts

truffle migrate


### 7️ Run Project

* Open `index.html` in browser

---

### 8️ Connect MetaMask

* Connect to Ganache network
* Import account using private key

---

##  Working Flow

1. Farmer adds product
2. Product stored in blockchain
3. User views product
4. User purchases using MetaMask
5. Transaction recorded permanently

---

##  Advantages

* Transparent supply chain
* Secure transactions
* No data tampering
* Builds trust

---

## Future Scope

* Mobile app development
* QR-based tracking
* Real-time IoT integration

---

## Conclusion

This project shows how blockchain can improve transparency and security in agriculture by removing intermediaries and ensuring trust between farmers and consumers.

---

## 🙌 Acknowledgement

We thank our faculty for guidance and support in completing this project.

---
