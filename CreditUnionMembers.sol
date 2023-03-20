pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Counter {
    uint public count;

    function get() external view returns (uint) {
        return count;
    }

    function inc() external returns (uint) {
        count += 1;
        return count;
    }
}

contract MyCreditUnionMembership is ERC721, Ownable {
//   This map is supposed track this Memebership NFT's
    mapping(address => mapping(uint => bool)) public RequestEvalAgentNFT;
// This Map is supposed to keep a list of Members Balances
    mapping(address => uint) public myMembersBalances;
    bytes32 []MembersOfCreditUnionDIDs;
    //receiver public OnlyOwner;
//    bytes32 []myMembersBalances;
    

     constructor() ERC721("MyCreditUnionMembership", "NFTDID") {
    }
//  // Receive is a variant of fallback that is triggered when msg.data is empty
//     receive() external payable {
//         emit Log("receive", gasleft());
//     }
    function onlyOwnerOfCreditUnion(address, bool) internal view {
        _checkOwner();
        //returns();
    }
    function getCreditPoolBalance(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
//        return ;
 //    return _creditPoolBalance[_addr1][_i];
  }
      // Helper function to check the balance of this contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }


 
//     function fallBack()payable public {
//         receiverOnlyOwner[msg.sender()];
 }

