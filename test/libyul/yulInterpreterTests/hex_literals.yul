{
	let x := hex"112233445566778899aabbccddeeff6677889900"
	sstore(0, x)
}
// ----
// Trace:
// Memory dump:
// Storage dump:
//   0000000000000000000000000000000000000000000000000000000000000000: 112233445566778899aabbccddeeff6677889900000000000000000000000000
