const fs = require('fs');

const wasmBuffer = fs.readFileSync('./eeppromX.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { eeppromX } = wasmModule.instance.exports;
	var d=0;
	var e=0;
	console.log("\033[42;37m\n");
	e=eeppromX(0);
	for(d=0;d<e;d++)console.log(eeppromX(d+1));

});
