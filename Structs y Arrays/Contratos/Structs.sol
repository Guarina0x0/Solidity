pragma solidity 0.8.7;

contract Structs {
    //Es un tipo de variable que representa un objeto
    struct Persona {
        string nombre;
        uint edad;
        
    }
    Persona persona1 = Persona('Guarina', 22);
    
  function devolverPersona() public view returns(string memory) {
        return persona1.nombre;
    }
    
    Persona[] arrayPersonas;
    
    function nuevoElemento(string memory _nombre, uint _edad) public {
        arrayPersonas.push(Persona(_nombre, _edad));
    }
    
    function devolverElemento(uint posicion) public view returns(string memory) {
        return arrayPersonas[posicion].nombre;
    }
}
