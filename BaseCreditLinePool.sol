pragma solidity ^0.8.0;

import "./BaseCreditPool.sol";
import "./CreditUnionMembers.sol";

contract BaseCreditLinePool {
  // Payable address can receive Ether
    address payable public owner;
    address public CreditUnionMembers= 0x63D610f604f52615850da3A8Ff6B316e004F948f;
    bytes32 public CreditPoolBalance;
    
    event MembershipLog(string message);
    event CreditBalanceLog(string message);
//    event Response(bool success, bytes data);

  // Payable constructor can receive Ether
    constructor() payable {
        owner = payable(msg.sender);
    }
  //Function to deposit Ether into this contract.
  //Call this function along with some Ether.
  //The balance of this contract will be automatically updated.
  function deposit(uint amount) public payable {}
  //function to witdraw all ether 
  function withdraw() internal {
    //get the amount of Ether stored in this contract
    uint amount = address(this).balance;

    //send all Ether to owner
    // Owner can receive Ether since the address of woner is payable
    (bool success,) = owner.call{value: amount}("");
    require(success, "failed to send Ether");
  }
  function transfer(address payable _to, uint _amount) public {
    //Note that "to" is declared as payable
    (bool success,) = _to.call{value: _amount}("");
    require(success, "Failed to send Ether");
  }

    function getMemberOfCreditUnion (address from) public virtual returns (uint) {
        // You can read from a state variable without sending a transaction.
    //function get() public view returns (uint) {
   //     return address;
        emit MembershipLog("MembershipCredentialsValid");
    }


    function getCreditPoolBalance (address from) public returns (uint)  {
     // function get() public view returns (uint) 
          // get the amount of Ether stored in this address
        uint amount = address(this).balance;
    //     return balance;
        // Owner can check Balance since the address of owner is public
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Has Zero Loans");
        emit CreditBalanceLog("Member has enough balance and no outstanding loans");

    }


    // // Function to deposit Ether into this contract.
    // // Call this function along with some Ether.
    // // The balance of this contract will be automatically updated.
    // function deposit(uint amount) public payable {}
    //     // Function to withdraw all Ether from this contract.
    // function withdraw() public {
    //     // get the amount of Ether stored in this contract
    //     uint amount = address(this).balance;

    //     // send all Ether to owner
    //     // Owner can receive Ether since the address of owner is payable
    //     (bool success, ) = owner.call{value: amount}("");
    //     require(success, "Failed to send Ether");
    // }
    //     // Function to transfer Ether from this contract to address from input
    // function transfer(address payable _to, uint _amount) public {
    //     // Note that "to" is declared as payable
    //     (bool success, ) = _to.call{value: _amount}("");
    //     require(success, "Failed to send Ether");
    // }

 
    
}
