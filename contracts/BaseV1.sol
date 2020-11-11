// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.6.8;


/**
 * @title base logic, version 1
 */
contract BaseV1 {
    string private _name;

    function name() public view returns (string memory) {
        return _name;
    }

    function _setName(string memory newName) internal {
        _name = newName;
    }
}
