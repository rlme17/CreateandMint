# RichardToken

## Overview

The `RichardToken` is an ERC20-compliant token contract written in Solidity. It extends the OpenZeppelin `ERC20` and `Ownable` contracts to provide functionalities for creating, burning, and transferring tokens. The contract has been set up with an initial supply of 1,000,000 tokens.

## Contract Details

### Functions

#### `constructor()`

- Description: Initializes the contract with a name ("RichardToken"), symbol ("Chard"), and mints 1,000,000 tokens to the deployer's address.

#### `burn(uint256 amount)`

- Description: Allows the owner to burn a specific amount of tokens.
- Parameters:
  - `amount` (uint256): The amount of tokens to burn.
- Modifiers:
  - `onlyOwner`: Ensures that only the owner of the contract can call this function.

#### `mint(address account, uint256 amount)`

- Description: Allows the owner to mint (create) new tokens and assign them to a specific address.
- Parameters:
  - `account` (address): The address to which the new tokens will be assigned.
  - `amount` (uint256): The amount of tokens to mint.
- Modifiers:
  - `onlyOwner`: Ensures that only the owner of the contract can call this function.

#### `transfer(address recipient, uint256 amount)`

- Description: Overrides the standard `transfer` function to add a check for the zero address.
- Parameters:
  - `recipient` (address): The address to which the tokens will be transferred.
  - `amount` (uint256): The amount of tokens to transfer.
