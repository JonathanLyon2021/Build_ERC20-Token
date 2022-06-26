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

    /* @notice - Returns the remaining number of tokens that spender will be allowed to spend on behalf of owner through 
    transferForm. This is zero by default. This value changes when approve or transferFrom are called.
    @param _owner - The owner of the tokens
    @param _spender - The authorized account to spend the balance of the owner.
    @return remaining - The remaining tokens that can be spent
     */
    function allowance(address _owner, address _spender)external view returns (uint256 remaining);

    /*@notice - Moves amount tokens from the caller's account to recipient
    @param _to - The receiver of tokens 
    @param _valuie - The value to be sent to the receiver
    @return didOperationSucceed - Returns a boolean value indicating wether the operation succeeded
     */
     function transfer(address _to, uint256 _value) external returns (bool didOperationSucceed);

     function  approve(address _spender, uint256 _value) external returns (bool didOperationSucceed);
}