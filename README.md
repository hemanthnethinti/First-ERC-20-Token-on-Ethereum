# First-ERC-20-Token-on-Ethereum  
## MyToken (MTK)

## Overview
MyToken is a basic ERC-20 compatible token built on the Ethereum blockchain for learning purposes.  
It demonstrates how standard tokens work, including transfers, balances, approvals, delegated spending, and event logging.

This project was implemented using Solidity 0.8.x and deployed/tested on Remix IDE (JavaScript VM).

---

## Token Details
- Name: MyToken  
- Symbol: MTK  
- Decimals: 18  
- Total Supply: 1,000,000 MTK  

Note:  
ERC-20 tokens use 18 decimals internally, so total supply is stored as:

```
1,000,000 × 10^18 = 1000000000000000000000000
```

---

## What Is ERC-20?
ERC-20 is a widely used token standard on Ethereum that defines a common interface for fungible tokens.  
It ensures compatibility across wallets, exchanges, and smart contracts by defining functions like:

- transfer  
- approve  
- transferFrom  
- balanceOf  
- allowance  

---

## Implemented Features
1. Public token metadata (name, symbol, decimals, totalSupply)  
2. Mapping-based balance tracking  
3. transfer function for sending tokens  
4. approve and allowance for granting spending permission  
5. transferFrom for delegated transfers  
6. Transfer and Approval events  
7. Input validation using require (zero address checks, balance checks, allowance checks)  
8. Helper functions: getTotalSupply(), getTokenInfo()  

---

## How to Deploy (Remix, JavaScript VM)

1. Open Remix IDE.  
2. Create a file named `contracts/MyToken.sol`.  
3. Paste your Solidity contract code.  
4. Open **Solidity Compiler**, choose version **0.8.x**, and compile.  
5. Go to **Deploy & Run Transactions**.  
6. Select **JavaScript VM**.  
7. Enter initial supply:

```
1000000000000000000000000
```

8. Click **Deploy** to deploy the contract.

---

## How to Use the Token

### 1. Check Balance
```solidity
balanceOf(address account)
```

### 2. Transfer Tokens
```solidity
transfer(address to, uint256 amount)
```

Example for sending 1 MTK:  
```
1000000000000000000
```

### 3. Approve Spending
```solidity
approve(address spender, uint256 amount)
```

### 4. Check Allowance
```solidity
allowance(address owner, address spender)
```

### 5. Transfer Using Allowance
```solidity
transferFrom(address from, address to, uint256 amount)
```

---

## Testing Performed

### Successful Tests
- Balance of deployer shows full supply  
- transfer works between accounts  
- approve sets correct allowance  
- transferFrom uses allowance correctly  
- Events logged properly (Transfer & Approval)

### Failure Tests (Expected)
- Transfer to zero address reverted  
- Transfer exceeding balance reverted  
- transferFrom without approval reverted  

These confirm correct validation and behavior.

---

## What I Learned
- How ERC-20 tokens store balances and allowances  
- Why decimals = 18 is the Ethereum standard  
- How approve + transferFrom enables delegated spending  
- How events improve transparency for block explorers  
- How to deploy and test smart contracts in Remix  
- Importance of input validation and safety in Solidity  

---

## Project Structure
```
contracts/
   MyToken.sol
README.md
screenshots/
   compilation.png
   deployment.png
   token-info.png
   transfer-test.png
   events.png
   edge-case-revert.png
```

---

## Conclusion
This project demonstrates a complete ERC-20 token implementation with proper documentation, testing, and validation.  
It serves as a strong introduction to Solidity, Ethereum token standards, and smart contract development workflows.

