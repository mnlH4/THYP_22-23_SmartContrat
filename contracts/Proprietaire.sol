pragma solidity ^0.8.17;

contract Propietaire {
    address public propietaire;

    event LogJournalTransfere(address indexed _propietaireCourant, address indexed _nouveaupropietaire);

    modifier uniquementProprietaire() {
        require(msg.sender == propietaire);
        _;       
        
    }

    function Propietaire() public {
        propietaire = msg.sender;
    }


}