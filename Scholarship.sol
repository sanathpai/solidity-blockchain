// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.7.0;

contract Scholarship {
    uint public amount; // amount to be sent
    address payable public reciever; // Students recieving the amount
    address payable public donor; // The government sending the money
    enum State { Created, Completed }
    State public state; // state of the transaction

    constructor() public payable {
        reciever = msg.sender;
        amount = msg.value;
    }

    modifier onlyReciever() {
        require(
            msg.sender == reciever,
            "This is recievers method."
        );
        _;
    }

    modifier onlyDonor() {
        require(
            msg.sender == donor,
            "This is donors method."
        );
        _;
    }

    modifier inState(State _state) {
        require(
            state == _state,
            "Invalid state."
        );
        _;
    }
    
    event ScholarshipConfirmed();

    /// Confirm that the reciever wants to recieve the item
    /// This will release the locked ether.
    function confirmReceived()
        public
        onlyReciever
        inState(State.Created)
    {
        emit ScholarshipConfirmed();
        
        donor.transfer(amount);
        reciever.transfer(address(this).balance);
        state = State.Completed;
    }
}
