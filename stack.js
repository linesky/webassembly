const fs = require('fs');

const wasmBuffer = fs.readFileSync('./stack.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { stacks } = wasmModule.instance.exports;
	var d=0;
	var v=0;
	var pushs=0;
	var pops=1;
	var read=2;
	var sizes=255;
	console.log("\033[42;30m\n");
	for(d=0;d<sizes;d++)stacks(d,pushs);
	for(d=0;d<sizes;d++){
		v=stacks(d,pops);
		if(v!=254-d)console.log("error--------------");
		console.log(v);
	}

});
