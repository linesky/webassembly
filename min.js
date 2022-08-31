const fs = require('fs');

const wasmBuffer = fs.readFileSync('./min.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { min } = wasmModule.instance.exports;
	var x=0;
	var xx=0;
	console.log("\033[42;30m\n");
	xx=10;
	//if x >screenIn; x=screenIn
	for(x=0;x<xx*2;x++)console.log(min(x,xx));

});
