pragma solidity ^0.4.18;

contract StructProblem {
    struct Account {
        string name;
        address addr;
        string email;
    }
	
    Account[] accounts;
    address private owner;
    
    modifier isOwner() {
        require(msg.sender == owner);
        _;
    }
    
    function StructProblem() public {
        owner = msg.sender;
    }
    
    function create(string name, string email) public {
        Account memory currentAcc;
        currentAcc.name = name;
        currentAcc.addr = msg.sender;
        currentAcc.email = email;
        accounts.push(currentAcc);
    }
    
    function get(uint index) isOwner public view returns (string, address, string) {
        Account memory currentAcc = accounts[index];
        return (currentAcc.name, currentAcc.addr, currentAcc.email);
    }
    
}