// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.6.8;

import './BaseV2.sol';
import './VersionedInitializable.sol';

import 'truffle/Assert.sol';

/**
 * @title Versioned implementation, version 2
 */
contract ImplV2 is BaseV2, VersionedInitializable {

    modifier checkPreviousRevision() {
        Assert.equal(lastInitializedRevision, 1, "lastInitializedRevision lookup failure");
        _;
    }

    function getRevision() internal override pure returns (uint256) {
        return 2;
    }

    function initialize(string memory name) public checkPreviousRevision initializer {
        _setName(name);
        _setTimestamp(block.timestamp);
    }
}
