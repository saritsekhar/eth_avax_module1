# Error Handling in Smart Contract

This Solidity smart contract demonstrates error handling techniques using `require`, `assert`, and `revert` functions.

## License

This contract is licensed under the MIT License.

## Prerequisites

- Solidity ^0.8.0

## Contract Details

The `smartContract` contract provides the following functions:

### `setValue`

- Sets the value of the contract.
- Only the owner can set the value.
- The value must be greater than zero.

### `getValue`

- Retrieves the current value of the contract.

### `assertExample`

- Demonstrates the usage of the `assert` function.
- Asserts that two input values are not equal.

### `revertExample`

- Demonstrates the usage of the `revert` function.
- Reverts the transaction if the input is less than 10.

## Usage

1. Ensure you have Solidity ^0.8.0 installed.
2. Compile and deploy the `smartContract` contract to a supported Ethereum network.
3. Interact with the deployed contract by calling the available functions and providing the required parameters.
