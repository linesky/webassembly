const fs = require('fs');

const wasmBuffer = fs.readFileSync('./score.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { scores } = wasmModule.instance.exports;
	var x=0;
	var xx=16;
	var xxx=0;
	var readss=0;
	console.log("\033[42;30m\n");
	for(x=0;x<xx;x++){
		xxx=scores(200);
		console.log(scores(readss));
	}

});
