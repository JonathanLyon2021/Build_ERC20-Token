//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

import "./Token.sol";
/** 
    * @title Standard ERC20 token 
    * @dev Implementation of the basic standard token.
    * https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
**/
contract StandardToken is Token {
    mapping(address => uint256) internal _balances;
    mapping(address => mapping(address => uint256)) internal _allowed;
    uint256 internal _totalSupply;

    function totalSupply() external view override returns (uint256 supply) {
        return _totalSupply;
    }
}