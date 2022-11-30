// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GhaniBuisness is ERC20, Ownable {
    constructor() ERC20("Ghani Buisness", "GBS") {
       
    }
     uint public amountLimit;

    function mint(uint256 amount) public onlyOwner {
        require(amountLimit < 20000000,"amount limit Reahed");
        amountLimit += amount;
        _mint(msg.sender, amount *10 ** decimals());

    }

    function decimals() public view virtual override returns (uint8) {
      return 10;
}
}