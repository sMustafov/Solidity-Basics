pragma solidity ^0.4.18;

contract SimpleStorage {
    uint private storedData;
    
    function get() public view returns (uint) {
        return storedData;
    }
    
    function set(uint x) public {
        storedData = x;
    }
}
