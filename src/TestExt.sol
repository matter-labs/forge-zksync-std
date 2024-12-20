// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.6.2 <0.9.0;

import {TestBaseExt} from "./BaseExt.sol";

// ⭐️ TEST
abstract contract TestExt is TestBaseExt {
    // Note: IS_TEST() must return true.
    bool public IS_TEST = true;
}
