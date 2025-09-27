// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarRegistry {
    struct Car {
        string vin;
        string owner;
        string[] history;
    }
    mapping(string => Car) private cars;

    function registerCar(string memory _vin, string memory _owner) public {
        cars[_vin] = Car(_vin, _owner, new string[](0));
    }

    function addHistory(string memory _vin, string memory _event) public {
        require(bytes(cars[_vin].vin).length != 0, "Xe chưa được đăng ký.");
        cars[_vin].history.push(_event);
    }

    function getCar(string memory _vin) public view returns (Car memory) {
        return cars[_vin];
    }
}
