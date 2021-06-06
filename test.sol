pragma solidity >=0.5.0 <0.6.0;

contract Fwd3 {

  address payable private destinationAddress1;

  function setRecipient() public {
    destinationAddress1 = msg.sender;
  }

  function() external payable {
    destinationAddress1.transfer((msg.value * 2)/3);
  }

  function flush() public {
    destinationAddress1.transfer(address(this).balance);
  }

}
