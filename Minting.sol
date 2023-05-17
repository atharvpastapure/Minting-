// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyToken {
    //public variable
    string public tokenName = "push" ;
    string public tokenAbbvr = "pull" ;
    uint public totalSuppply = 0;

    //mappin variable
    mapping (address => uint)public balances;
    //mint function 
    function mint (address _address,uint _value) public
    {
        totalSuppply+=_value;
         balances[_address]+=_value; 
    }
    //burn function
    function burn(address _address,uint _value)public{
        if(balances[_address]>=_value)
        {
             totalSuppply -=_value;
             balances[_address]-=_value ;
        }
      
    }
    
}