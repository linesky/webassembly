const fs = require('fs');

const wasmBuffer = fs.readFileSync('./ram.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { ram } = wasmModule.instance.exports;
	var d=0;
	var v=0;
	var sizes=ram(0,0,0);
	console.log("\033[42;30m\n");
	for(d=0;d<sizes;d++)ram(d+1,1,d);
	for(d=0;d<sizes;d++){
		v=ram(d+1,0,0);
		if(v!=d)console.log("error--------------");
		console.log(d,"   ",v);
	}


});
