// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.16;

import "./erc20Interface.sol";

contract ERC20Token is ERC20Interface {

  uint256 constant private MAX_UINT256 = 2**256 - 1;
  mapping (address => uint256) public balances;
  mapping (address => mapping (address => uint256)) public allowed;

  uint256 public totSupply;
  string public name;
  uint8 public decimals;
  string public symbol;

  constructor (
    uint256 _initialAmount,
    string memory _tokenName,
    uint8 _decimalUnits,
    string memory _tokenSymbol
  ) public {
    balances[msg.sender] = _initialAmount;
    totSupply = _initialAmount;
    name = _tokenName;
    decimals = _decimalUnits;
    symbol = _tokenSymbol;
  }

  function transfer(address _to, uint256 _value) public returns (bool success) {
    require(balances[msg.sender] >= _value, "Insufficient funds for transfer resource.");
    balances[msg.sender] -= _value;
    balances[_to] += _value;
    emit Transfer(msg.sender, _to, _value);
    return true;
  }

}