// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Strings.sol";

contract StringsTest2 is Test {
    string d = "Hi guys wassup here?";
    string e = "stfu man! You mad fr";

    function setUp() public {
    }

    function testEncode() public {
        assertTrue(!Strings.compareEncode(d, e));
        assertTrue(Strings.compareEncode(d, d));
        assertTrue(Strings.compareEncode(e, e));
    }

    function testEncode2() public {
        assertTrue(!Strings.compareEncode2(d, e));
        assertTrue(Strings.compareEncode2(d, d));
        assertTrue(Strings.compareEncode2(e, e));
    }

    function testCompareBytes() public {
        assertTrue(!Strings.compareBytes(d, e));
        assertTrue(Strings.compareBytes(d, d));
        assertTrue(Strings.compareBytes(e, e));
    }

    function testCompareBytes2() public {
        assertTrue(!Strings.compareBytes2(d, e));
        assertTrue(Strings.compareBytes2(d, d));
        assertTrue(Strings.compareBytes2(e, e));
    }
}
