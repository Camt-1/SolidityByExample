require("@nomicfoundation/hardhat-toolbox");


task("account", "Prints the list of accounts", async (taskArgs,hre) => {
  const accounts = await hre.ethers.getSigners();

  for(const account of account) {
    console.log(account.address);
  }
});


/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.28",
};
