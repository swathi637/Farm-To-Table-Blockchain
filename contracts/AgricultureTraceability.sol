// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgricultureTraceability {

    struct Product {
        uint id;
        string cropName;
        uint price;
        address payable farmer;
        address owner;
    }

    uint public productCount = 0;

    mapping(uint => Product) public products;

    function addProduct(string memory _cropName, uint _price) public {

        require(_price > 0, "Price must be greater than zero");

        productCount++;

        products[productCount] = Product(
            productCount,
            _cropName,
            _price,
            payable(msg.sender),
            msg.sender
        );
    }

    function buyProduct(uint _id) public payable {

        require(_id > 0 && _id <= productCount, "Product does not exist");

        Product storage p = products[_id];

        require(msg.value == p.price, "Incorrect price");
       require(msg.sender != p.farmer, "Farmer cannot buy own product");

        p.farmer.transfer(msg.value);

        p.owner = msg.sender;
    }
}