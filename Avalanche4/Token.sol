// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    address private owner;

    constructor() ERC20("Degen Gaming Token", "DEGEN") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function mint(address _to, uint256 _value) external onlyOwner returns (bool) {
    require(_to != address(0), "Invalid recipient address.");

    balanceOf[_to] += _value;
    totalSupply += _value;

    emit Transfer(address(0), _to, _value);
    return true;
}

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }

    function redeem(uint256 amount) external {
        _burn(msg.sender, amount);
        // Perform the necessary actions to redeem the tokens for items in the in-game store
    }
}

