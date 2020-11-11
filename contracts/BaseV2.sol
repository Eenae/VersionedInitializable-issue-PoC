// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.6.8;


/**
 * @title base logic, version 2
 */
contract BaseV2 {
    string private _name;
    uint256 private _someTimestamp;

    function name() public view returns (string memory) {
        return _name;
    }

    function _setName(string memory newName) internal {
        _name = newName;
    }

    function _setTimestamp(uint256 ts) internal {
        _someTimestamp = ts;
    }
}
