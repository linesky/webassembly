const fs = require('fs');

const wasmBuffer = fs.readFileSync('./floatEmulator.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { floatEmulator } = wasmModule.instance.exports;
	var getInt=5;
	var setInt=4;
	var divs=3;
	var mult=2;
	var subs=1;
	var adds=0;
	var x=0;
	var xx=16;
	var xxx=0;
	var readss=0;
	console.log("\033[42;30m\n");
	for(x=0;x<xx;x++){
		xxx=floatEmulator(x,0,setInt);
		xxx=floatEmulator(xxx,10,divs);
		console.log(xxx);
	}


});
