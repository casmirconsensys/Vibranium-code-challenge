//SPDX-Liscence-Identifier: MIT
pragma solidity ^0.8.17;

error TransferFailed();

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract StakeContract{
    mapping(address => mapping( address => uint256) ) public stakedBalances;
    
//This function is to allow VBX ERC20 Token Staking into the vcapitalPool.sol and add liquidity to the Lending pool to fund the vbxProtocol
    function stake(uint256 amount, address token) external returns(bool) {
        stakedBalances[msg.sender][token] += amount;
        bool success = IERC20(token).transferFrom(msg.sender, address(this), amount);
        if (!success) revert TransferFailed();
        return success;
    }
} 
