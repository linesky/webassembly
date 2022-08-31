const fs = require('fs');

const wasmBuffer = fs.readFileSync('./map2d.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { map2d } = wasmModule.instance.exports;
	var x=0;
	var y=0;
	var dx=0;
	var dy=0;
	x=map2d(0,0);
	y=map2d(0+1,0);
	console.log("\033[42;37m\n");
		for(dy=0;dy<y;dy++){
			for(dx=0;dx<x;dx++){
				console.log(map2d(dx+2,dy));
			}
			console.log("");
		}


});
