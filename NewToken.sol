// SPDX-License-Identifier: MIT

  /**
   * @title NewToken
   * @dev TulegenCoin
   * @custom:dev-run-script file_path
   */

pragma solidity ^0.8.9;

import "./ERC20Standard.sol";
import "./Ownable.sol";

contract NewToken is ERC20Standard, Ownable { 
	constructor() public {
		totalSupply = 123;
		name = "TulegenCoin";
		decimals = 4;
		symbol = "TUL";
		version = "1.0";
		commission = totalSupply * 5 / 100;
		net_amount = totalSupply - commission;
		balances[msg.sender] = totalSupply;

	}
}
