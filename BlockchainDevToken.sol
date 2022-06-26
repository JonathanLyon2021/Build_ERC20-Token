// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./StandardToken.sol";

contract BlockchainDevToken is StandardToken {

    /** 
    *Public variables of the token type*
     NOTE: The following variables are optional vanities. One does not have to include them.
     *They allow one to customize the token contract & in no way influences the core functionality.
     *Some wallets/interfaces might not even bother to look at this information.
    **/
    string public name; //Token name
    uint8 public decimals; //Number of decimals that our token will have. To be standard-compliant, keep it 18.
    string public symbol;   //A short identifier for your contract(ie. ACAD for Academt token, EOS, etc.)
    uint256 public unitOneEthCanBuy;   //How many units of your token can be brought by 1 ETH? (ie. 1 ETH (1000000000000000 wei) = 10 tokens)
    uint256 public totalRaisedEthInWei;    ///EI is the smallest unit of ETH. Similar to cent is USD or Satoshi to Bitcoin. This is the TOTAL raised eth of the ICO.
    address payable public owner;     //The raised ETH will go to this account

}