// versão do solidity
pragma solidity ^0.4.0;

// criação do smart contract
contract anac {
    // variável que armazena a idade
    uint public idade = 18;

    // variável que armazena o endereço do dono do contrato
    address private owner;

    // define quem é o dono do contrato quando implantado
    constructor() {
        owner = msg.sender; // msg.sender é quem implantou o contrato
    }

    // funcão pra alterar a idade (só o dono pode fazer isso)
    function setIdade(uint256 _novaIdade) public {
        require(msg.sender == owner, "Apenas o dono pode alterar a idade!");
        idade = _novaIdade;}

    // função pra retornar a idade
    function getIdade() public view returns (uint256) {
        return idade;
    }
}