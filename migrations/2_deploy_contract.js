const Donation = artifacts.require("Donation");

module.exports = async function (deployer, network, accounts) {

  await deployer.deploy(Donation);
  const donation = await Donation.deployed();

  // Add trusted organizations automatically

  await donation.addTrustedOrg(accounts[1], "Red Cross");
  await donation.addTrustedOrg(accounts[2], "UNICEF");
  await donation.addTrustedOrg(accounts[3], "Save The Children");
  await donation.addTrustedOrg(accounts[4], "Feeding India");

};