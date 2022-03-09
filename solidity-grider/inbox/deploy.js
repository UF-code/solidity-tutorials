const HDWalletProvider = require('@truffle/hdwallet-provider')
const Web3 = require('web3')
const { interface, bytecode } = require('./compile.js')
require('dotenv').config()

const provider = new HDWalletProvider(process.env.wallet, process.env.network)

const web3 = new Web3(provider)
