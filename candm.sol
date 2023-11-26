// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

contract RichardToken is ERC20, Ownable {
    constructor() ERC20("RichardToken", "Chard") {
        _mint(msg.sender, 1000000);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(recipient != address(0), "ERC20: transfer to the zero address");
        return super.transfer(recipient, amount);
    }
}
