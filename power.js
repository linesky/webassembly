const fs = require('fs');

const wasmBuffer = fs.readFileSync('./power.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { power } = wasmModule.instance.exports;
	var x=0;
	var xx=16;
	console.log("\033[42;30m\n");
	for(x=0;x<xx;x++)console.log(x,power(2,x));

});
