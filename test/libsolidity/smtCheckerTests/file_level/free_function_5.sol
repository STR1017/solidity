pragma experimental SMTChecker;
contract K {}
function f() pure {
	(abi.encode, "");
}
// ----
// Warning 6133: (67-83): Statement has no effect.
