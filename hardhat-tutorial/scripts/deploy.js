const hre = require("hardhat");

async function main() {
  const contract= await hre.ethers.getContractFactory("Whitelist");
  const deployedContract= await contract.deploy(10);
  await deployedContract.deployed();
  console.log("Deployed to:",deployedContract.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().then(()=>{process.exit(0)}).catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

