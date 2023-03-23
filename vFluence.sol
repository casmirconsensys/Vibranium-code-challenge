pragma solidity ^0.8.17;

import "@openzeppelin/=lib/openzeppelin-contracts/access/AccessControl.sol";

contract vFluence is AccessControl  {
    bytes32 public constant VENDOR_ROLE = keccak256("VENDOR_ROLE");
    bytes32 public constant BUYER_ROLE = keccak256("BUYER_ROLE");
    bytes32 public constant LP_ROLE = keccak256("LP_ROLE");
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant INFLUENCER_ROLE = keccak256("INFLUENCER_ROLE");
    bytes32 public constant VENDOR_ADMIN_ROLE = keccak256("VENDOR_ADMIN_ROLE");
    bytes32 public constant BUYER_ADMIN_ROLE = keccak256("BUYER_ADMIN_ROLE");
    bytes32 public constant LP_ADMIN_ROLE = keccak256("LP_ADMIN_ROLE");
    bytes32 public constant INFLUENCER_ADMIN_ROLE = keccak256("INFLUENCER_ADMIN_ROLE");
    bytes32 public constant VENDOR_INFLUENCER_ROLE = keccak256("VENDOR_INFLUENCER_ROLE");
    bytes32 public constant BUYER_INFLUENCER_ROLE = keccak256("BUYER_INFLUENCER_ROLE");
    bytes32 public constant LP_INFLUENCER_ROLE = keccak256("LP_INFLUENCER_ROLE");
    bytes32 public constant VENDOR_INFLUENCER_ADMIN_ROLE = keccak256("VENDOR_INFLUENCER_ADMIN_ROLE");
    bytes32 public constant BUYER_INFLUENCER_ADMIN_ROLE = keccak256("BUYER_INFLUENCER_ADMIN_ROLE");
    bytes32 public constant LP_INFLUENCER_ADMIN_ROLE = keccak256("LP_INFLUENCER_ADMIN_ROLE");
    bytes32 public constant VENDOR_INFLUENCER_ADMIN_ROLE = keccak256("VENDOR_INFLUENCER_ADMIN_ROLE");
    bytes32 public constant BUYER_INFLUENCER_ADMIN_ROLE = keccak256("BUYER_INFLUENCER_ADMIN_ROLE");
    bytes32 public constant LP_INFLUENCER_ADMIN_ROLE = keccak256("LP_INFLUENCER_ADMIN_ROLE");
    bytes32 public constant VENDOR_INFLUENCER_ADMIN_ROLE = keccak256("VENDOR_INFLUENCER_ADMIN_ROLE");
    bytes32 public constant BUYER_INFLUENCER_ADMIN_ROLE = keccak256("BUYER_INFLUENCER_ADMIN_ROLE");
    bytes32 public constant LP_INFLUENCER_ADMIN_ROLE = keccak256("LP_INFLUENCER_ADMIN_ROLE");
}
