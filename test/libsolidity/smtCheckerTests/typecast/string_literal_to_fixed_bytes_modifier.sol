pragma experimental SMTChecker;
contract B {
    function f() mod2("0123456") pure public { }
    modifier mod2(bytes7 a) {
		assert(a == "0123456");
		assert(a == "1234567");
		_;
	}
}
// ----
// Warning 6328: (152-174): CHC: Assertion violation happens here.\nCounterexample:\n\na = 13564890559296822\n\nTransaction trace:\nB.constructor()\nB.f()
