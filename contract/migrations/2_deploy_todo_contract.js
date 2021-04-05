const TodoContract = artifacts.require("../contracts/TodoContract");

module.exports = function(deployer) {
  deployer.deploy(TodoContract);
};
