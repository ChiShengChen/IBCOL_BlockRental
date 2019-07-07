var Adoption = artifacts.require("Adoption");
var HouseFur = artifacts.require("HouseFur");

module.exports = function(deployer) {
  deployer.deploy(Adoption);
  deployer.deploy(HouseFur);
};