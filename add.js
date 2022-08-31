const fs = require('fs');

const wasmBuffer = fs.readFileSync('./add.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { add } = wasmModule.instance.exports;
	var x=0;
	var xx=16;
	var xxx=0;
	console.log("\033[42;30m\n");
	for(x=0;x<xx;x++){
		xxx=add(xxx,8);
		console.log(xxx);
	}

});
