pragma solidity ^0.5.0;

//  Import contracts
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

contract KaseiCoin is ERC20, ERC20Detailed, ERC20Mintable {
    
    // Create a constructor
    constructor(
        string memory name,
        string memory symbol,
        uint256 initial_supply
    ) 
        ERC20Detailed(name, symbol, 18)
        public 
    {
        // constructor remains empty; conditions have been specified elsewhere
    }
}
