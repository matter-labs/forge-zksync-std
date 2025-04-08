// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.6.2 <0.9.0;

// 💬 ABOUT
// Forge Std's default Script.

// 🧩 MODULES

// 📦 BOILERPLATE
import {ScriptBaseExt} from "./BaseExt.sol";

// ⭐️ SCRIPT
abstract contract ScriptExt is ScriptBaseExt {
    // Note: IS_SCRIPT_EXT() must return true.
    bool public IS_SCRIPT_EXT = true;
}
