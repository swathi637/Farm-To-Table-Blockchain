const AgricultureTraceability = artifacts.require("AgricultureTraceability");

module.exports = function(deployer) {
  deployer.deploy(AgricultureTraceability);
};