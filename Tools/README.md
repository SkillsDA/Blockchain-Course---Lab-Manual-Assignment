# Foundational Curriculum for Blockchain - Lab Manual & Assignment

This page provides information on Tools used in the <b>Foundational Curriculum for Blockchain</b>

## Scripts/Languages

- Solidity Program
- Web3.js


## Tools 
- Cryptowallet
  - [Bitcoin Core](https://bitcoin.org/en/bitcoin-core/)
  - [Metamask](https://metamask.io/download.html)
- Faucet
  - [Bitcoin Testnet](https://testnet-faucet.mempool.co/)
  - [Ropsten Ethereum Testnet](https://faucet.metamask.io/)
- Blockchain Explorer
  - [Bitcoin Explorer](https://www.blockchain.com/explorer?view=btc)
  - [Ethereum Explorer](https://etherscan.io/)
- [Remix IDE](https://remix.ethereum.org/)
- [Ganache](https://www.trufflesuite.com/ganache)
- [Truffle Framework](https://www.trufflesuite.com/truffle)
- Amazon Web Service (AWS) managed Blockchain
- Solidity Vulnerability Scanner
- InterPlanetary File System (IPFS)

## Solidity Program

**Solidity** is the object-oriented programming language for writing smart contracts on Ethereum Blockchain. 

For development of Smart Contracts using Solidity, Ethereum provides its own online IDE called [Remix](https://remix.ethereum.org/).

Below code shows the Solidity Template for your reference.

```
pragma solidity <<version-number>>;

/**
 * @title Solidity Template
 * @author Ramaguru Radhakrishnan
 */
 contract <<contractName>> {

    uint64 intvar1;	// Variable of Unsigned Integer with 64 bits 
    uint128 intvar2;    // Variable of Unsigned Integer with 128 bits
    int256 intvar3;     // Variable of Signed Integer with 256 bits
    
    string  stringvar;	// Variable of String
    
    address addressvar; // Variable of Address - to store Ethereum Wallet Address or Smart Contract Address
    
    struct structvar {
        
        uint256 structvar1;
        string  structvar2;
    }
    
    structvar varstruct;
    
    /** Constructor */
    constructor() {}
    
    /**
     * @dev Example Function to perform operation and store
     * @param num value to store
     */
    function <<functionName>>(paramaters) public {
        // do function operations
    }
    
     /**
     * @dev Example Function to return values
     * @param num value to store
     */
    function <<functionName1>>() public view returns(datatypes) {
        return (variables);
    }

}

```

On **Compilation** of Solidity Program, we get **ABI (Application Binary Interface)** along with Bytecodes. ABI is similar to API. 
On **Deploying** the Smart Contract to the Blockchain, we get **Smart Contract Address**, which uniquely identifies the contract. 
ABI and Smart Contract Address are required to interact and access contract from the WebUI.

## Web3.js

**Web3.js** is a collection of javascript libraries which enables communication with local or remote Ethereum using HTTP or RPC communication. 

Web3.js code Template:

```
    <script src="https://cdn.jsdelivr.net/npm/web3@1.2.8/dist/web3.js"></script>
    <script>	
	
	var account;
	window.addEventListener('load', async () => {

	
		if (typeof window.ethereum !== 'undefined') { 
			console.log("MetaMask is Available :) !"); 
			}
			
		// Modern DApp browsers
		if (window.ethereum) {
			window.web3 = new Web3(ethereum);
			
			// To prevent the page reloading when the MetaMask network changes
			ethereum.autoRefreshOnNetworkChange = false;
			
			// To Capture the account details from MetaMask
			const accounts = await ethereum.enable();
			account = accounts[0];
				
			}
		// Legacy DApp browsers
		else if (window.web3) {
			//window.web3 = new Web3(web3.currentProvider);
			window.web3 = new Web3(new Web3.providers.HttpProvider("https://ropsten.infura.io/v3/<<api-id>>")); 
			}
		// Non-DApp browsers
		else {
			console.log('Non-Ethereum browser detected. Please install MetaMask');
			}
			
			});
    </script>			

```


## Faucet 

Faucet is a service that transfers smaller units of cryptocurrency to the requested address in Testnet for development and testing purpose. Most of the 
cryptocurrency provides support to Faucet. 

In Ethereum, for our lab, we will be using Ropsten Test Network. 

## Disclaimer
If there are any issues or mistakes, kindly report to admin@skillsda.com
