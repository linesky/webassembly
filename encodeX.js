const fs = require('fs');

const wasmBuffer = fs.readFileSync('./encodeX.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { encodeX } = wasmModule.instance.exports;
	var d=0;
	var e=0;
	console.log("\033[42;37m\n");
	e=16;
	for(d=0;d<e;d++)console.log(d," = ",encodeX(d));

});
