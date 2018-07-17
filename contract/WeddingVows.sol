pragma solidity ^0.4.23;

// @title Wedding Vows
// @from  baniya 
contract WeddingVows {
	string constant public content = "";
	mapping(uint => uint) public commentedBlockNum;
	uint public counter;
	
	event Commented(address indexed sender, string comment, uint timestamp, uint count);
	
	function addComment(string comment) public {
	    counter += 1;
	    commentedBlockNum[counter] = block.number;
	    emit Commented(msg.sender, comment, now, counter);
	}
}
