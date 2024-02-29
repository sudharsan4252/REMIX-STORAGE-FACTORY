// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "contracts/SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simplestorageArray;
    // datatype    view    variable name

   function CreateSimpleStorageContract() public {
     SimpleStorage simplestorage = new SimpleStorage();
     // type         variable name       new value
     simplestorageArray.push(simplestorage);
     }

     function sfstore( uint256 _simpleStorageIndex,uint256 _simpleStorageNumber) public {
        simplestorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
     }

     function sfGet(uint _simplStorageIndex)public view returns(uint256) {
        return simplestorageArray[_simplStorageIndex].retrieve();


     }


}