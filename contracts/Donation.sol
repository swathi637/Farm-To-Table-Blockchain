// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Donation {

    address public admin;

    address[] public orgAddresses;

    constructor() {
        admin = msg.sender;
    }

    struct DonationDetails {
        address donor;
        address receiver;
        uint amount;
        string message;
        uint timestamp;
    }

    DonationDetails[] public donations;

    mapping(address => string) public orgNames;
    mapping(address => bool) public trustedOrgs;

    function addTrustedOrg(address _org, string memory _name) public {
        require(msg.sender == admin, "Only admin can add");
        require(!trustedOrgs[_org], "Already added");

        trustedOrgs[_org] = true;
        orgNames[_org] = _name;

        orgAddresses.push(_org);
    }

    function donate(address _receiver, string memory _message) public payable {

        require(msg.value > 0, "Send ETH");
        require(trustedOrgs[_receiver], "Not trusted");

        // 🔥 TRANSFER ETH TO ORGANIZATION
        payable(_receiver).transfer(msg.value);

        donations.push(DonationDetails(
            msg.sender,
            _receiver,
            msg.value,
            _message,
            block.timestamp
        ));
    }

    function getDonations() public view returns (DonationDetails[] memory) {
        return donations;
    }

    function getOrgName(address _org) public view returns (string memory) {
        return orgNames[_org];
    }

    function getAllOrgs() public view returns (address[] memory) {
        return orgAddresses;
    }
}