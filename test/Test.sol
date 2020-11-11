// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.8;

import '../contracts/ImplV1.sol';
import '../contracts/ImplV2.sol';
import {InitializableAdminUpgradeabilityProxy} from '../contracts/InitializableAdminUpgradeabilityProxy.sol';


contract Test {

    function test_upgrade() external {
        ImplV1 implv1 = new ImplV1();

        InitializableAdminUpgradeabilityProxy proxy = new InitializableAdminUpgradeabilityProxy();

        bytes memory params = abi.encodeWithSignature('initialize(string)', 'foo bar');
        proxy.initialize(address(implv1), address(this), params);


        ImplV2 implv2 = new ImplV2();
        proxy.upgradeToAndCall(address(implv2), params);
    }
}
