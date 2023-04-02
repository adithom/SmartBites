Inspiration

We are constantly hearing about how food delivery companies underpay and exploit their "contractors". We decided to change that by decentralizing the entire system by deploying it on the ether blockchain. As college students, we know that the need for some money might arise suddenly and this app will help mitigate that by allowing anyone to make some quick pocket change by delivering one or two orders.
What it does

SmartBites aims to decentralize the ecosystem surrounding food delivery. The app has separate sections for people wanting to order in and for people who want to deliver food. It works by issuing a smart contract in the ether blockchain that has two payout parties involved: the restaurant and the driver. Once the smart contract is deployed, people who are in the delivery section of the app sees nearby contract offer and can sign the ones they find most attractive.

A delivery driver can pick the food up, and bring the food the front door and scans a QR Code on the package at the front door camera. The video footage from that moment will be processed on the blockchain using iExec and YOLOv7 which will be on the look out for porch piracy. The video processing will only end when the user confirms that they picked up the package. The gas fees for this processing will be charged from the user's wallet.
How we built it

We started off by defining the smart contract to be deployed on the Ethereum blockchain using Solidity. We then deployed the smart contract on the Goerli testnet using Verbwire to test the contract and perform further unit tests. We also used the Verbwire API to deploy the smart contracts from a mobile app.

We used Figma to design the mobile app and then Relay and Android Studio to create it. We also used Raspberry Pi to integrate a camera to send video data to the blockchain to be processed using YOLO for the computer vision model. The Raspberry Pi camera acted as the door camera for our prototype. The video data will be processed using YOLO in the blockchain by iExec. This system completely decentralizes all the aspects of food delivery with minimal server space or involvement required from devs after deployement.
Challenges we ran into

One of the biggest challenges we faced was using the VerbWire API to deploy the smart contract into the blockchain. This was compounded by the limited knowledge we had about smart contracts or blockchains.

The other biggest challenge we ran into was figuring out to train the YOLO model to recognize when the package is being moved away. Since this involves another step over the classic object classifiation that YOLO is used for. We also struggled with figuring out how to deploy the trained model the blockchain using iExec.
Accomplishments that we're proud of

It felt like a really big accomplishment to have finally deployed the Food Delivery smart contract on the ether blockchain. It took us so many attempts to finally get this output:

Deploying contracts with the account: 0xE17cef047BfE8d72c324421C7cAf1e085Bde58e0

Contract address: 0x40febe9FE97840ABE2b939A5DdcfAE139C8BAd9F

This output is worth so much because it signifies everything we learned over just a weekend. We had no previous experience with solidity or smart contracts and reaching this in such a short period is something we are proud of.
What we learned

We learned how to work with APIs and how to work around the keys and the deployment of APIs in other nets. We also learned about the intricacies of smart contracts and blockchains. The biggest reason for this is one of the steepest parts of blockchain tech - all the change there has been in the space in the past few years. This results in a lot of incompatible technologies and outdated guides forcing us to manually read the documentation and learning the hard way. I think this hackathon was personally so much about learning for me.
What's next for SmartBites

We are planning to expand on the MVP that we have right now. The next goal that we have is to complete the YOLOv7 model we are working on and then deploy it on the ether blockchain with iExec to resource-control. We also plan to putting this project out in the real-world because know it has a lot of potential.