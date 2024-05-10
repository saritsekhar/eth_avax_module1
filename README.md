# nameArrayContract

## Description

The `nameArrayContract` is a Solidity smart contract designed to manage an array of strings representing names. It provides functionalities to add new names to the array, check if a name exists, retrieve the concatenated string from two names at specified indexes, and get the count of names in the array.

## License

This contract is licensed under the MIT License.

## Prerequisites

- Solidity ^0.8.0

## Functions

### `addName`

- Adds a new name to the array.
- Checks if the name already exists in the array before adding.
- Emits an event `NameAdded` upon successful addition.
- Reverts the transaction if the name already exists.

### `checkName`

- Checks if a given name exists in the array.
- Emits an event `NameExist` with the result.

### `nameIndex`

- Retrieves the concatenated string of two names at specified indexes.
- Asserts that the length of the concatenated string is greater than 15.
- Reverts the transaction if the indexes are out of bounds.

### `getStringCount`

- Retrieves the count of names in the array.

## Usage

1. Ensure you have Solidity ^0.8.0 installed.
2. Compile and deploy the `nameArrayContract` contract to a supported Ethereum network.
3. Interact with the deployed contract by calling the available functions and providing the required parameters.
