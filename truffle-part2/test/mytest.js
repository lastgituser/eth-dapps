let Hello = artifacts.require("Hello");

contract("Hello", (accounts) => {
    it("should put 1000 coins in owner's account", () => {
        return Hello.deployed().then((instance) => {
            return instance.balances.call(accounts[0]);
        }).then((balances) => {
            assert.equal(balances.valueOf(), 1000, "1000 wasn't in the account");
        });
    });

    it("should return the name \"hello\"", () => {
        return Hello.deployed().then((instance) => {
            return instance.getName.call()
        }).then((name) => {
            assert.equal(name, "hello", "The name isn't \"hello\"");
        });
    });

    it("should return the name \"hi\"", () => {
        return Hello.deployed().then(async (instance) => {
            await instance.setName("hi");
            return instance.getName.call()
        }).then((name) => {
            assert.equal(name, "hi", "The name isn't \"hi\"");
        });
    });
});
