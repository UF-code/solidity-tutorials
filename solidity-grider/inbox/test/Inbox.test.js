// contract test code will go here
const assert = require('assert')
const ganache = require('ganache-cli')

const Web3 = require('web3')
const web3 = new Web3(ganache.provider())
const { interface, bytecode } = require('../compile.js')

// class Car {
//     park() {
//         return 'stopped'
//     }

//     drive() {
//         return 'vroom'
//     }
// }

// let car

// beforeEach(() => {
//     car = new Car()
// })

// describe('Car', () => {
//     it('can park', () => {
//         assert.equal(car.park(), 'stopped')
//     })

//     it('can drive', () => {
//         assert.equal(car.drive(), 'vroom')
//     })
// })

let accounts
let inbox

// beforeEach(async () => {
//     // Get a list of all accounts

//     // promises .then syntax
//     web3.eth.getAccounts().then((fetchedAccounts) => {
//         console.log(fetchedAccounts)
//     })
// })

beforeEach(async () => {
    // Get a list of all accounts

    // async await syntax
    accounts = await web3.eth.getAccounts()

    // Use one of the accounts to deploy the contract
    inbox = await new web3.eth.Contract(JSON.parse(interface))
        .deploy({
            data: bytecode,
            arguments: ['Hi There!'],
        })
        .send({ from: accounts[0], gas: '1000000' })
})

describe('Inbox', () => {
    it('deploys a contract', () => {
        console.log(accounts)
        console.log(inbox)
    })
})
