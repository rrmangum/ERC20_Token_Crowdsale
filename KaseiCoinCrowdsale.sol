pragma solidity ^0.5.0;

import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";



contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, RefundablePostDeliveryCrowdsale {
    
    // create a constructor and provide parameters for all of the features of the crowdsale.
    constructor(
        uint rate,
        address payable wallet,
        KaseiCoin token,
        uint goal,
        uint open,
        uint close
    ) public 
        Crowdsale(rate, wallet, token)
        CappedCrowdsale(goal)
        TimedCrowdsale(open, close)
        RefundableCrowdsale(goal)    
    {
        // constructor can stay empty
    }
}

contract KaseiCoinCrowdsaleDeployer {
    // Create an `address public` variable called `kasei_token_address`.
    address public kaseiCoinAddress;
    // Create an `address public` variable called `kasei_crowdsale_address`.
    address public kaseiCrowdsaleAddress;

    // Add the constructor.
    constructor(
       string memory name,
       string memory symbol,
       address payable wallet,
       uint goal
    ) public {
        // Create a new instance of the KaseiCoin contract.
        KaseiCoin token = new KaseiCoin(name, symbol, 0);
        
        // Assign the token contract’s address to the `kasei_token_address` variable.
        kaseiCoinAddress = address(token);

        // Create a new instance of the KaseiCoinCrowdsale contract
        KaseiCoinCrowdsale kaseiCrowdsale = new KaseiCoinCrowdsale(
            1,
            wallet,
            token,
            goal,
            now,
            now + 24 weeks
        );
            
        // Aassign the `KaseiCoinCrowdsale` contract’s address to the `kasei_crowdsale_address` variable.
        kaseiCrowdsaleAddress = address(kaseiCrowdsale);

        // Set the `KaseiCoinCrowdsale` contract as a minter
        token.addMinter(kaseiCrowdsaleAddress);
        
        // Have the `KaseiCoinCrowdsaleDeployer` renounce its minter role.
        token.renounceMinter();
    }
}
