pragma solidity ^0.4.18;

contract Certifications {
  mapping (string => uint8) private certificateHashes;
  address contractOwner;
  
  function Certifications() {
	contractOwner = msg.sender;
  }

  function add(string hash) public {
    require (msg.sender == contractOwner);
    certificateHashes[hash] = 1;
  }

  function verify(string hash) constant public returns (bool) {
    return certificateHashes[hash] != 0;
  }
}
