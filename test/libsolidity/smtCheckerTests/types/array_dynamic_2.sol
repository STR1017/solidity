pragma experimental SMTChecker;

contract C
{
	uint[][] array;
	function f(uint x, uint y, uint z, uint t) public view {
		require(array[x][y] == 200);
		require(x == z && y == t);
		assert(array[z][t] > 100);
	}
}
// ----
// Warning 6368: (131-139): CHC: Out of bounds access happens here.\nCounterexample:\narray = []\nx = 0\ny = 0\nz = 0\nt = 0\n\nTransaction trace:\nC.constructor()\nState: array = []\nC.f(0, 0, 0, 0)
// Warning 6368: (131-142): CHC: Out of bounds access happens here.\nCounterexample:\narray = []\nx = 38\ny = 0\nz = 0\nt = 0\n\nTransaction trace:\nC.constructor()\nState: array = []\nC.f(38, 0, 0, 0)
