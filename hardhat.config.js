require("@nomicfoundation/hardhat-toolbox");

// Go to https://alchemy.com, sign up, create a new App in
// its dashboard, and replace "KEY" with its key
const ALCHEMY_API_KEY = "1C3bPKmFmqhV3qV4_iPm2zRT5RNT-gXD";

// Replace this private key with your Sepolia account private key
// To export your private key from Metamask, open Metamask and
// go to Account Details > Export Private Key
// Beware: NEVER put real Ether into testing accounts
const SEPOLIA_PRIVATE_KEY = "84fe095f234ebb5c5570109eb1d8650a18cbabaa6ca9a60c2e19b218a03352e8";

module.exports = {
  solidity: "0.8.9",
  networks: {
    sepolia: {
      url: "https://eth-sepolia.g.alchemy.com/v2/1C3bPKmFmqhV3qV4_iPm2zRT5RNT-gXD",
      accounts: [SEPOLIA_PRIVATE_KEY]
    }
  }
};