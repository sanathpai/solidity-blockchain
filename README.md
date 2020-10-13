# Donation Tracking System  

### Authors  
1. Melroy Neil Dsouza (4NM17CS105)
2. Sanath R. Pai (4NM17CS158)
3. Saheer A. R. (4NM17CS155)

### Introduction
Between an endless list of frauds and scams that are prevalent in the digital world, you wouldn’t expect that the noble act of charity work would be something where outright fraud or embezzlement would find a home. Unfortunately, no sector remains untouched by the existence of bad actors wanting to cash in on people’s good intentions and unwarranted trust. However, the advent of transforming technology like Blockchain promises that these concerns can be solved if we implement a donation system administered via blockchain.

An Ethereum Smart Contract can replace the middlemen work as it enables the automatic sending of payments on the achievement of pre-defined agreements. Using the potential of the Ethereum blockchain, everything goes through smart contracts and thus, we can track all transactions in real-time.

Incorporating a blockchain ledger within the system can enable donors and supervising entities to meticulously monitor and track their donations all the way down the line.

Transactions on an Ethereum blockchain based system are recorded on the blockchain, making them transparent and immutable. Donors can rest assured about secure transferring of their donations to the recipient. Further, it would produce a ripple effect of positive impacts that generate much more value than conventional donation mediums.

### Implementation
We have implemented a Ethereum Smart Contract using Solidity to create a transparent donation system. There are two signees in this contract: Donors and Recievers. Donors send the money to the reciever in the form of ether. Recievers recieve the amount.
Step 1: The contract is created with the donation amount.
Step 2: The reciever confirms the donation using confirmReceived function
Step 3: The amount is transfered.

The contract emits the following events so that other applications can interact with it:
1. DonationConfirmed: Notify the application that the donation is confirmed and transfer has completed.

### Conclusion  
Donation tracking system is implementated.


### Screenshots  
