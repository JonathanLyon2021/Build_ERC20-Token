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

    function balanceOf(address _owner) public view override returns (uint256) {
        return _balances[_owner];
    }

    function allowance(address _owner, address _spender) public view override returns (uint256){
        return _allowed[_owner][_spender];
    }

    function transfer(address _to, uint256 _value) public override returns (bool) {
        require(_value <= _balances[msg.sender]);
        require(_to != address(0));
    /**
    *If your token leaves out 'totalSupply' and can issue more tokens as time goes on,
    * you need to check that your values don't wrap/overflow.
    */
    require(_balances[_to] + _value > 0);

    _balances[msg.sender] -= _value;
    _balances[_to] += _value;
    emit Transfer(msg.sender, _to, _value);
    return true;
    }


}