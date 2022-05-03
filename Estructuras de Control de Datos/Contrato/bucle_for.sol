pragma solidity 0.8.7;

contract Datos {
    uint total = 0;
    function correrLoop() public  returns(uint){
        for(uint interaccion = 0; interaccion <= 5; interaccion++){
            total +=2; // = total= total + 2
        }
        return total;
    }
}