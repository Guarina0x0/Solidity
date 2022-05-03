pragma solidity 0.8.7;



contract Mappings {
    mapping(address => uint) balance;
    
    function cambiarBalance(uint nuevoBalance) public{
        balance[msg.sender] = nuevoBalance;
    }
    
    function devolverBalance() public view returns (uint){
        return balance[msg.sender];
    }
}