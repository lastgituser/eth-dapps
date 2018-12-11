let Hello = artifacts.require("Hello");

contract("Hello", (accounts) => {
    it("should put 1000 coins in owner's account", () => {
        return Hello.deployed().then((instance) => {
            return instance.balances.call(accounts[0]);
        }).then((balances) => {
            assert.equal(balances.valueOf(), 1000, "1000 wasn't in the account");
        });
    });
});
