==== Source: A.sol ====
contract A {
	function f(uint x) public pure {
		assert(x > 0);
	}
}
==== Source: B.sol ====
import "A.sol";
contract C is A {}
// ====
// SMTEngine: all
// ----
// Warning 6328: (A.sol:49-62): CHC: Assertion violation happens here.\nCounterexample:\n\nx = 0\n\nTransaction trace:\nA.constructor()\nA.f(0)
// Warning 6328: (A.sol:49-62): CHC: Assertion violation happens here.\nCounterexample:\n\nx = 0\n\nTransaction trace:\nA.constructor()\nA.f(0)
