// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.16;

import "./erc20Interface.sol";

contract ERC20Token is ERC20Interface {

  uint256 constant private MAX_UINT256 = 2**256 - 1;
  mapping (address => uint256) public balances;
  mapping (address => mapping (address => uint256)) public allowed;

  

}