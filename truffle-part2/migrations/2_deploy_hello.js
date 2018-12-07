const hello = artifacts.require ("./Hello");

const helloSettings = {
    name: "hello"
};

module.exports = function (deployer) {
    deployer.deploy (hello, helloSettings.name)
}
