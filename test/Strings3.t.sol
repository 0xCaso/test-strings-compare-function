// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Strings.sol";

contract StringsTest2 is Test {
    string a = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
    string b = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab";
    string c = "c";
    string d = "Hi guys wassup here?";
    string e = "stfu man! You mad fr";

    function setUp() public {
    }

    function testEncode() public {
        assertTrue(Strings.compareEncode(a, a));
        assertTrue(!Strings.compareEncode(a, b));
        assertTrue(!Strings.compareEncode(a, c));
        assertTrue(!Strings.compareEncode(d, e));
        assertTrue(Strings.compareEncode(d, d));
        assertTrue(Strings.compareEncode(e, e));
    }

    function testEncode2() public {
        assertTrue(Strings.compareEncode2(a, a));
        assertTrue(!Strings.compareEncode2(a, b));
        assertTrue(!Strings.compareEncode2(a, c));
        assertTrue(!Strings.compareEncode2(d, e));
        assertTrue(Strings.compareEncode2(d, d));
        assertTrue(Strings.compareEncode2(e, e));
    }

    function testCompareBytes() public {
        assertTrue(Strings.compareBytes(a, a));
        assertTrue(!Strings.compareBytes(a, b));
        assertTrue(!Strings.compareBytes(a, c));
        assertTrue(!Strings.compareBytes(d, e));
        assertTrue(Strings.compareBytes(d, d));
        assertTrue(Strings.compareBytes(e, e));
    }

    function testCompareBytes2() public {
        assertTrue(Strings.compareBytes2(a, a));
        assertTrue(!Strings.compareBytes2(a, b));
        assertTrue(!Strings.compareBytes2(a, c));
        assertTrue(!Strings.compareBytes2(d, e));
        assertTrue(Strings.compareBytes2(d, d));
        assertTrue(Strings.compareBytes2(e, e));
    }
}
