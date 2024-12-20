// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.6.2 <0.9.0;

import {VmExt} from "./VmExt.sol";

abstract contract CommonBaseExt {
    // Cheat code address, 0x7109709ECfa91a80626fF3989D68f67F5b1DD12D.
    address internal constant VM_EXT_ADDRESS = address(uint160(uint256(keccak256("hevm cheat code"))));

    // System contract addresses
    address internal constant BOOTLOADER = 0x0000000000000000000000000000000000008001;
    address internal constant ACCOUNT_CODE_STORAGE = 0x0000000000000000000000000000000000008002;
    address internal constant NONCE_HOLDER = 0x0000000000000000000000000000000000008003;
    address internal constant KNOWN_CODES_STORAGE = 0x0000000000000000000000000000000000008004;
    address internal constant IMMUTABLE_SIMULATOR = 0x0000000000000000000000000000000000008005;
    address internal constant CONTRACT_DEPLOYER = 0x0000000000000000000000000000000000008006;
    address internal constant FORCE_L2_DEPLOYER = 0x0000000000000000000000000000000000008007;
    address internal constant L1_MESSENGER = 0x0000000000000000000000000000000000008008;
    address internal constant MSG_VALUE_SIMULATOR = 0x0000000000000000000000000000000000008009;
    address internal constant L2_BASE_TOKEN = 0x000000000000000000000000000000000000800A;
    address internal constant SYSTEM_CONTEXT = 0x000000000000000000000000000000000000800B;
    address internal constant BOOTLOADER_UTILITIES = 0x000000000000000000000000000000000000800c;
    address internal constant EVENT_WRITER = 0x000000000000000000000000000000000000800d;
    address internal constant COMPRESSOR = 0x000000000000000000000000000000000000800E;
    address internal constant COMPLEX_UPGRADER = 0x000000000000000000000000000000000000800f;
    address internal constant KECCAK = 0x0000000000000000000000000000000000008010;
    address internal constant PUBDATA_CHUNK_PUBLISHER = 0x0000000000000000000000000000000000008011;
    address internal constant CODE_ORACLE = 0x0000000000000000000000000000000000008012;
    address internal constant CONSOLE_LOG = 0x000000000000000000636F6e736F6c652e6c6f67;
    address internal constant SHA256 = 0x0000000000000000000000000000000000000002;
    address internal constant ECRECOVER = 0x0000000000000000000000000000000000000001;
    address internal constant ECADD = 0x0000000000000000000000000000000000000006;
    address internal constant ECMUL = 0x0000000000000000000000000000000000000007;
    address internal constant EC_PAIRING = 0x0000000000000000000000000000000000000008;
    address internal constant GAS_BOUND_CALLER = 0xc706EC7dfA5D4Dc87f29f859094165E8290530f5;
    address internal constant P256_VERIFY = 0x0000000000000000000000000000000000000100;
    // Used when deploying with create2, https://github.com/matter-labs/era-contracts/blob/main/system-contracts/contracts/Create2Factory.sol.
    address internal constant ZKSYNC_CREATE2_FACTORY = 0x0000000000000000000000000000000000010000;

    VmExt internal constant vmExt = VmExt(VM_EXT_ADDRESS);
}

abstract contract TestBaseExt is CommonBaseExt {}

abstract contract ScriptBaseExt is CommonBaseExt {}
