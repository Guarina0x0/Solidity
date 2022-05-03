pragma solidity 0.8.7;

contract Datos {
    uint total = 0;
    function correrLoop() public  returns(uint){
        uint interaccion = 0;
        while( interaccion <= 5){
            total +=2; // = total= total + 2
             interaccion++;
        }
        return total;
    }
}