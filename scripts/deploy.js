async function main() {
  const [deployer] = await ethers.getSigners();
  //const user = 0xE17cef047BfE8d72c324421C7cAf1e085Bde58e0;
  const _restaurant = "0xdc8cAABea11827Eb38ca53CCC7B4CFB12fdE846b";
  //const _driver = 0xd50ea4f8DE1a5bcb943b377124351C9D7139b96C;
  const _foodFee = ethers.utils.parseEther("0.001");
  const _deliveryFee = ethers.utils.parseEther("0.001");
  const _expirationTime = 1200;

  console.log("Deploying contracts with the account:", deployer.address);

  const FoodDeliveryContract = await ethers.getContractFactory("FoodDeliveryContract");
  const foodDeliveryContract = await FoodDeliveryContract.deploy(_restaurant, _foodFee, _deliveryFee, _expirationTime);

  console.log("Contract address:", foodDeliveryContract.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
});
