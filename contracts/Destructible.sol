pragma solidity ^0.8.17;

import './Propietaire.sol';

contract Destructible is Proprietaire {
    
    function Destructible() public payable { }

    function detruire() public uniquementProprietaire {
        selfdestruct(propietaire);
    }
    
    function detruireEtEnvoyer(address _destinatair) public uniquementProprietaire {
        selfdestruct(_destinatair);
        
    }
}