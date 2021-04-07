pragma experimental SMTChecker;
function f()pure {
	ufixed a = uint64(1) + ufixed(2);
}
// ----
// Warning 2072: (52-60): Unused local variable.
