const fs = require('fs');

const wasmBuffer = fs.readFileSync('./map3d.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { map3d } = wasmModule.instance.exports;
	var x=0;
	var y=0;
	var z=0;
	var dx=0;
	var dy=0;
	var dz=0;
	x=map3d(0,0,0);
	y=map3d(0+1,0,0);
	z=map3d(0+2,0,0);
	console.log("\033[42;30m\n");
	for(dz=0;dz<z;dz++){
		for(dy=0;dy<y;dy++){
			for(dx=0;dx<x;dx++){
				console.log(map3d(dx+3,dy,dz));
			}
		}
		console.log("\n");
	}

});
