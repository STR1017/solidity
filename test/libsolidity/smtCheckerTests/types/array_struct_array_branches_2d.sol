pragma experimental SMTChecker;

contract C
{
	struct S { uint[][] a; }
	function f(bool b) public pure {
		S[] memory c = new S[](1);
		// Disabled because of Spacer nondetemrinism.
		/*
		c[0].a = new uint[][](1);
		c[0].a[0] = new uint[](1);
		c[0].a[0][0] = 0;
		if (b)
			c[0].a[0][0] = 1;
		else
			c[0].a[0][0] = 2;
		assert(c[0].a[0][0] > 0);
		*/
	}
}
// ----
// Warning 5667: (84-90): Unused function parameter. Remove or comment out the variable name to silence this warning.
// Warning 2072: (108-120): Unused local variable.
