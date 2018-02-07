pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BBBCOIN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BBBCOIN(address _owner)  UpgradeableToken(_owner) {
    name = "BBBCOIN";
    symbol = "BBB";
    totalSupply = 30000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}