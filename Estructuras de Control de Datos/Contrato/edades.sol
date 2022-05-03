pragma solidity 0.8.7;

function correrCondicional(uint edad) public view returns(string memory) {
    if (edad <=4){
        return "Bebe";
    }
    else if (edad > 4 && edad <= 12) {
        return "Nino";
    }
    else if (edad > 12 && edad <=18){
        return "Adoloscente";
    }
    else {
        return "Adulto";
    }
}