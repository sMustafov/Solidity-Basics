pragma solidity ^0.4.18;

contract IncrementContract {
    uint private valueToBeIncremented;
    
    function get() public view returns (uint) {
        return valueToBeIncremented;
    }
    
    function increment(uint delta) public {
        valueToBeIncremented += delta;
    }
}
