// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Simple ERC-20 style token for learning
contract MyToken {
    // --------- Metadata ---------
    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;

    uint256 public totalSupply;

    // --------- Balances & Allowances ---------
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    // --------- Events ---------
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    // --------- Constructor ---------
    constructor(uint256 _initialSupply) {
        require(_initialSupply > 0, "Initial supply must be greater than 0");

        totalSupply = _initialSupply;
        balanceOf[msg.sender] = _initialSupply; // msg.sender = deployer (Account A)

        // Show that tokens were "minted" to deployer
        emit Transfer(address(0), msg.sender, _initialSupply);
    }

    // --------- transfer ---------
    function transfer(address _to, uint256 _value) public returns (bool) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    // --------- approve ---------
    function approve(address _spender, uint256 _value) public returns (bool) {
        require(_spender != address(0), "Cannot approve zero address");

        allowance[msg.sender][_spender] = _value;

        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    // --------- transferFrom ---------
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[_from] >= _value, "Insufficient balance");
        require(allowance[_from][msg.sender] >= _value, "Insufficient allowance");

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        allowance[_from][msg.sender] -= _value;

        emit Transfer(_from, _to, _value);
        return true;
    }

    // --------- helpers ---------
    function getTotalSupply() public view returns (uint256) {
        return totalSupply;
    }

    function getTokenInfo()
        public
        view
        returns (string memory, string memory, uint8, uint256)
    {
        return (name, symbol, decimals, totalSupply);
    }
}
