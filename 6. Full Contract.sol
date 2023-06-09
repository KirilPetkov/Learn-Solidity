// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {
    // Ether payments
    // Modifiers
    // Visibility
    // Events
    // Enums

    // Vacant
    // Occupied

    enum Statuses { Vacant, // this is 0 
                Occupied } // this is 1
    // enum is just collection of options that's never going to change
    // like Vacant and Occupied

    Statuses public currentStatus;

    event Occupy(address _occupant, uint256 _value);

    address payable public owner;

    constructor() {
        owner = payable (msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant{
        // Check status
        require(currentStatus == Statuses.Vacant, "Currently occupied."); // true lines code run, false Not run
        _;
    }

    modifier costs(uint _amount) {
        // Check price
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }

    function book() public payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;

        //owner.transfer(msg.value); we change this like here

        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);


        emit Occupy(msg.sender, msg.value);
    }

}
