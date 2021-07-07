# Foundation Course in Blockchain Technology - Tools and Technology

This page provides information on Tools and Technologies used in the <b>Foundation Course in Blockchain Technology</b>.

## Scripts/Languages

- [Solidity Program](#solidity-program)
- [Web3.js](#web3js)


## Tools 
- Cryptowallet
  - [Bitcoin Core](https://bitcoin.org/en/bitcoin-core/)
  - [Metamask](https://metamask.io/download.html)
  - [Electrum](https://electrum.org/#home)
- [Faucet](Faucet.md)
  - [Bitcoin Testnet](https://testnet-faucet.mempool.co/)
  - [Ropsten Ethereum Testnet](https://faucet.metamask.io/)
- Blockchain Explorer
  - [Bitcoin Explorer](https://www.blockchain.com/explorer?view=btc)
  - [Ethereum Explorer](https://etherscan.io/)
- [Remix IDE](Remix.md)
- [Ganache](Ganache.md)
- [Truffle Framework](Truffle.md)
- Amazon Web Service (AWS) managed Blockchain
- Solidity Vulnerability Scanner 
  - [Contract Library](https://contract-library.com/)
  - [Mythx](https://mythx.io/)
- [InterPlanetary File System (IPFS)](IPFS.md)
- [Infura](https://infura.io/product/ipfs)

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

## Web3JS

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

## Disclaimer
If there are any issues or mistakes, kindly report to admin@skillsda.com
