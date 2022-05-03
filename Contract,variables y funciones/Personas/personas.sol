pragma solidity 0.8.7;

//Crear contrato 
contract Persona {
    //Variables Primitivas
    //Es mejor utilizar bit porque es mas barato el Gas y utilizar Strings
    string nombre = "Guarina";
    //Las variables de tipo unsigned integer no puede contener numeros negativos
    uint edad = 22;
    //Con uint solo numeros positivos , pero con int podemos usar numeros negativos o positivos
    //Variables tipo boleano  = True o false
    bool Guarina0x0 = true;
    // Address representa una direccion de Etherium o una wallet
    address wallet = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    enum StatusDesarollador { Junior , Senior}
    //Variable para acceder a los tipos de Desarrolladores que puede tener
    StatusDesarollador statusElegido;
    
    function devolverStatusDesarrollador() public view returns(StatusDesarollador){
        return statusElegido;
    }
    
    //Elegir Junior o Senior
    function cambiarEnum(uint posicion) public{
        if(posicion == 0) statusElegido = StatusDesarollador.Junior;
        if(posicion == 1) statusElegido = StatusDesarollador.Senior;
    }
    
    
    
    //Hay 2 tipos de funciones public o private , si utilizas view no gastas Gas
    //Cuando es string se puede almacenar en 2 sitios , en memory mas barato o en storage que gasta mas gas
    function devolverNombre() public view returns(string memory) {
        return nombre;
    }
    //Cuando hay 2 variables que se llaman igual hay que poner a la segunda variable _ para que no eliga el valor de la primera variable
    
    function cambiarNombre(string memory _nombre) public {
        nombre = _nombre;
    }
    function devolverEdad() public view returns(uint){
        return edad;
    }
    
    function cambiarEdad(uint _edad) public {
        edad = _edad;
    }
    function devolverGuarina() public view returns(bool){
        return Guarina0x0;
    }
    function cambiarDesarrollador(bool _Guarina0x0) public {
        Guarina0x0 = _Guarina0x0;
    }
    function devolverWallet() public view returns (address){
        return wallet;
    }
    function cambiarWallet(address _wallet) public {
        wallet = _wallet;
    }
}