// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Strings.sol";

contract StringsTest is Test {
    string a = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
    string b = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab";
    string c = "c";

    function setUp() public {
    }

    function testEncode() public {
        assertTrue(Strings.compareEncode(a, a));
        assertTrue(!Strings.compareEncode(a, b));
        assertTrue(!Strings.compareEncode(a, c));
    }

    function testEncode2() public {
        assertTrue(Strings.compareEncode2(a, a));
        assertTrue(!Strings.compareEncode2(a, b));
        assertTrue(!Strings.compareEncode2(a, c));
    }

    function testCompareBytes() public {
        assertTrue(Strings.compareBytes(a, a));
        assertTrue(!Strings.compareBytes(a, b));
        assertTrue(!Strings.compareBytes(a, c));
    }

    function testCompareBytes2() public {
        assertTrue(Strings.compareBytes2(a, a));
        assertTrue(!Strings.compareBytes2(a, b));
        assertTrue(!Strings.compareBytes2(a, c));
    }
}
