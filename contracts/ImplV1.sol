// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.6.8;

import './BaseV1.sol';
import './VersionedInitializable.sol';


/**
 * @title Versioned implementation, version 1
 */
contract ImplV1 is BaseV1, VersionedInitializable {

    function getRevision() internal override pure returns (uint256) {
        return 1;
    }

    function initialize(string memory name) public initializer {
        _setName(name);
    }
}
