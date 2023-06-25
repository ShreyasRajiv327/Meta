
//1.SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract handle{
   
    function product(uint alpha, uint beta)public pure returns(uint){
        uint prod=alpha*beta;
        require(prod>1000,"prod should be more than 1000");
        return prod;
    }
    function multiplecheck(uint gamma)public pure returns(uint){
        if(gamma%3==0){
            revert("The number is divisible by 3");
        }
        return gamma;
        
    }
    function asser(uint alpha)public pure returns(uint){
        assert(alpha==0);
        return 1;
    }
    
}
