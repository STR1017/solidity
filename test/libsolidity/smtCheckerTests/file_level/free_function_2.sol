pragma experimental SMTChecker;
contract C {
	function g() external {
		f();
	}
}
function f() {}
// ----
