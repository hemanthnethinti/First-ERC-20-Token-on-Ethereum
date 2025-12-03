# First-ERC-20-Token-on-Ethereum
# MyToken (MTK)

## Overview
MyToken is a simple ERC-20 compatible token built on Ethereum for learning purposes.

## Token Details
**Name**: MyToken
**Symbol**: MTK
**Decimals**: 18
**Total Supply**: 1,000,000 MTK

Note: On-chain totalSupply is stored as `1_000_000 * 10^18`.

## Features
Standard ERC-20 style implementation
Transfer tokens between addresses
Approve + `transferFrom` allowance mechanism
`Transfer` and `Approval` events for transparency
Balance and allowance tracking
Helper functions `getTotalSupply()` and `getTokenInfo()`

## How to Deploy (Remix, JavaScript VM)

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create new file `contracts/MyToken.sol`.
3. Paste the contract code.
4. Compile with Solidity **0.8.x**.
5. In **Deploy & Run**, select **JavaScript VM**.
6. Set `_initialSupply` to `1000000000000000000000000` for 1,000,000 tokens.
7. Click **Deploy**.

## How to Use

### Check Balance

```solidity
balanceOf(address account) // returns uint256
