const HDWalletProvider = require("@truffle/hdwallet-provider")
var mnemonic = "";

module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 7545,
      network_id: "*", // Match any network id
      gas: 5000000
    },
    sepolia: {
      provider: function (){
        return new HDWalletProvider(mnemonic, "https://sepolia.infura.io/v3/f18bc77518044970a6485bc5a14e89c2");
      },
      network_id: 5,
      gas: 4500000,
      gasPrice: 10000000000
    },
    live: {
      provider: function (){
        return new HDWalletProvider(mnemonic, "https://mainnet.infura.io/v3/f18bc77518044970a6485bc5a14e89c2")
      },
      network_id: 1,
      gas: 7500000,
      gasPrice: 10000000000
    }
  },
  compilers: {
    solc: {
      settings: {
        optimizer: {
          enabled: true, // Default: false
          runs: 200      // Default: 200
        },
      }
    }
  }
};
