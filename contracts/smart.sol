pragma solidity >=0.7.0 <0.9.0;

contract FoodDeliveryContract {
    address public user;
    address public restaurant;
    address public driver;
    uint public foodFee;
    uint public deliveryFee;
    uint public expirationTime;
    bool public isCanceled;

    mapping (address => bool) public registeredDrivers;
    mapping (address => uint) public payments;

    constructor(address _restaurant, uint _foodFee, uint _deliveryFee, uint _expirationTime) payable {
        user = msg.sender;
        restaurant = _restaurant;
        foodFee = _foodFee;
        deliveryFee = _deliveryFee;
        expirationTime = block.timestamp + _expirationTime;
    }

    function registerAsDriver() public {
        registeredDrivers[msg.sender] = true;
    }

    function setDeliveryFee(uint _deliveryFee) public {
        require(msg.sender == user, "Only the user can set the delivery fee");
        deliveryFee = _deliveryFee;
    }

    function nullifyContract() public {
        require(msg.sender == user, "Only the user can nullify the contract");
        require(block.timestamp > expirationTime, "Contract has expired");
        isCanceled = true;
    }

    function scanQRCode() public {
        require(msg.sender == driver, "Only the driver can scan the QR code");
        require(!isCanceled, "Contract has been nullified");
        uint totalPayment = foodFee + deliveryFee;
        require(address(this).balance >= totalPayment, "Not enough funds to complete the payment");

        // Send payment to the restaurant
        (bool success, ) = restaurant.call{value: foodFee}("");
        require(success, "Failed to send payment to the restaurant");

        // Send payment to the driver
        (success, ) = driver.call{value: deliveryFee}("");
        require(success, "Failed to send payment to the driver");

        // Send any remaining funds back to the user
        uint remainingPayment = address(this).balance;
        if (remainingPayment > 0) {
            (success, ) = user.call{value: remainingPayment}("");
            require(success, "Failed to send remaining payment back to the user");
        }
    }

    receive() external payable {
        require(msg.sender == user, "Only the user can send funds to this contract");
        payments[msg.sender] += msg.value;
    }
}
