pragma solidity 0.8.9;


contract HelloWorld {
    string helloWorld = "Hello World";
    
    //Se crea la funcion con view para no gastar gas y ademas se almacena en memoria para no gastar gas
    function getHelloWorld() public view returns (string memory){
        return helloWorld;
    }
    
    function setHelloWorld(string memory newHelloWorld) public{
        helloWorld = newHelloWorld;
    }
    
    
}

receive() external payable{}
    
    function sendMoney(address payable rico) payable public {
        //Comprobar si la cartera tiene fondos disponibles
        require(msg.value <= address(this).balance);
        //Realizar el envio de la transaccion
        rico.transfer(msg.value);
    }