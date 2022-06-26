// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//@title ERC20 interface
//@dev see https://github.com/ethereum/EIPs/issues/20

interface Token{
    //return supply - The total amount of tokens
    function totalSupply() external view returns (uint256 supply);

    //@param _owner - The address from which the balance will be retrieved
    //@return balance - The token of the owner
    function balanceOf(address _owner) external view returns (uint256 balance);

    
}