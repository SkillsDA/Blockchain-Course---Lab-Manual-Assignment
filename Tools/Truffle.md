# Foundation Course in Blockchain Technology - Tools - Truffle Framework

This page provides information on Tools and Technologies used in the <b>Foundation Course in Blockchain Technology</b>

## Truffle 

Truffle is a development environment, testing framework and asset pipeline for blockchains using the Ethereum Virtual Machine (EVM). Truffle Framework is commonly used along with Ganache Private Blockchain for faster and independent development. 

- <b>Installation of Truffle</b>

  ```
  npm install -g truffle
  ```

- <b>Unbox Tuffle Project</b>

  ```
  truffle unbox pet-shop  
  ```

 ![Truffle Unbox](../Assets/truffle_unbox.png)
 
 or 
 
- <b>Initialize a project</b>

  ```
  truffle init
  ```

  Once this operation is completed, you'll now have a project structure with the following items:

    - <b>contracts:</b> Solidity contracts
    - <b>migrations:</b> Scriptable deployment files
    - <b>test:</b> Test files for testing - application and contracts
    - <b>truffle-config.js:</b> Truffle configuration file
 
- <b>Truffle Console</b>

  ```
  truffle develop
  ```

 ![Truffle Unbox](../Assets/truffle_develop.png)
 

- <b>Writing the Smart Contracts</b>


- <b>Compilation of Smart Contracts</b>

  ```
  truffle compile
  ```
  
- <b>Migration of Smart Contracts</b>

  ```
  truffle migrate
  ```
  
 ![Truffle Unbox](../Assets/truffle_migrate_p1.png)
 ![Truffle Unbox](../Assets/truffle_migrate_p2.png)
  
- <b>Testing Smart Contracts</b>

  ```
  truffle test
  ```
  
- <b>DApp</b> 

 ![Truffle Unbox](../Assets/truffle_pet_shop.png)


## Disclaimer
If there are any issues or mistakes, kindly report to admin@skillsda.com
