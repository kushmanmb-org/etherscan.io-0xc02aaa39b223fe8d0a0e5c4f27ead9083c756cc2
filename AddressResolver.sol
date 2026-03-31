// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressResolver {
    mapping(address => address) public resolvedAddress;

    function setMapping(address from, address to) public {
        resolvedAddress[from] = to;
    }

    function resolve(address from) public view returns (address) {
        return resolvedAddress[from];
    }
}
