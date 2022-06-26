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

     /*@notice - Moves amount tokens from sender to receipient using the allowance mechanism, 
     amount is then deducted from the caller's allowance.
     @param _from - The account source to get the tokens _from
     @param _to - The destination account which will receive the tokens
     @param _value - The intended value of the tokens to be transferred
     @return didOperationSucceed - Returns a boolean value indicating wether the operation succeeded.
    */
    
    function transferFrom(address _from, address _to, uint256 _value)
    external
    returns (bool didOperationSucceed);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 _value
    );
}