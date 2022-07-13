// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Whitelist{
    uint8 public maxWhitelistedAddresses;
    uint8 public numWhitelistedAddresses;
    mapping(address => bool)public whitelistedAdresses;
    constructor(uint8 _maxWhitelistedAddresses){
        maxWhitelistedAddresses=_maxWhitelistedAddresses;
    }
    function addAddressToWhiteList() public{
        require(!whitelistedAdresses[msg.sender],"Already whitelisted");
        require(numWhitelistedAddresses<maxWhitelistedAddresses,"Max count reached");
        whitelistedAdresses[msg.sender]=true;
        numWhitelistedAddresses=numWhitelistedAddresses+1;
    }
    function numAddressWhiteListed() view public returns(uint8){
            return numWhitelistedAddresses;
    }


}