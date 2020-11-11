// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.8;

import './VersionedInitializable.sol';


/**
 * @title Workaround to get VersionedInitializable.lastInitializedRevision and not hit 'Cannot call fallback function from the proxy admin'
 */
contract VersionGetter {
    function getVersion(VersionedInitializable proxy) external view returns (uint256) {
        return proxy.lastInitializedRevision();
    }
}
