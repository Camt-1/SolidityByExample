const {ethers,run} = require("hardhat");

async function main(){
    const provider = ethers.provider;

    const blockNumber = await provider.getBlockNumber();
    console.log("当前网络的区块高度：",blockNumber);

    // const MyConstract = await ethers.getContractFactory("MyContract");
    // const contract = await MyConstract.deploy();
    // console.log(" 合约地址：",contract.address);
}

main()
.then(() => process.exit(0))
.catch(error => {
    console.error(error);
    process.exit(1);
});