// contract test code will go here
const assert = require('assert')
const ganache = require('ganache-cli')

const Web3 = require('web3')
const web3 = new Web3(ganache.provider())

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
})

describe('Inbox', () => {
    it('deploys a contract', () => {
        console.log(accounts)
    })
})
