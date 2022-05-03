pragma solidity 0.8.7;

//Crear contrato 
contract Persona {
    //Variables Primitivas
    //Es mejor utilizar bit porque es mas barato el Gas y utilizar Strings
    string nombre;
    //Las variables de tipo unsigned integer no puede contener numeros negativos
    uint edad;
    //Con uint solo numeros positivos , pero con int podemos usar numeros negativos o positivos
    //Variables tipo boleano  = True o false
    bool Guarina0x0;
    // Address representa una direccion de Etherium o una wallet
    address wallet;
    enum StatusDesarollador { Junior , Senior}
    //Variable para acceder a los tipos de Desarrolladores que puede tener
    StatusDesarollador statusElegido;
    //Tenemos que pasarle al constructor las variables que queremos definir dinamicamente en vez de pasarle el nombre de la Variable
    //Si tenemos una variable global que se llama igual que la variable que queremos definir tenemos que poner _
    constructor(string memory _nombre , uint _edad , bool _Guarina0x0 , address _wallet){
        nombre = _nombre;
        edad = _edad;
        Guarina0x0 = _Guarina0x0;
        wallet = _wallet;
    }
    
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
    
    //Dar visibilidad a una funcion privada
    function darVisibilidad() public view returns (string memory) {
        //return esVisible();
    }
    
    //Crear function privada pero no se muestra al ser privada , y solo puede ser llamada desde dentro del contrato
    function esVisible() private returns (string memory) {
        return "Soy Visible??";
    }
   
    
  //Private solo puede ser llamado desde dentro del mismo contrato
  //Internal puede ser llamadas desde dentro del mismo contrato o desde contratos hijos
  //External solo puede ser llamadas desde contratos externos o third-parties(Remix)
  //Public puede ser llamadas desde todas partes: El mismo contrato , contratos hijos , contratos externos o Third-Parties
}