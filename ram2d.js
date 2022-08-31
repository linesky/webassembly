const fs = require('fs');

const wasmBuffer = fs.readFileSync('./ram2d.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { ram2d } = wasmModule.instance.exports;
	var x=0;
	var y=0;
	var dx=0;
	var dy=0;
	var errs=0;
	console.log("\033[42;30m\n");
	x=ram2d(0,0,0,0);
	y=ram2d(0+1,0,0,0);
		for(dy=0;dy<y;dy++){
			for(dx=0;dx<x;dx++){
				ram2d(dx+2,dy,1,dx+(dy*x));
			}
		}

		for(dy=0;dy<y;dy++){
			for(dx=0;dx<x;dx++){
				errs=ram2d(dx+2,dy,0,0);
				if(errs!=dx+(dy*x))console.log("---error");
				console.log(dx,"   ",dy,"     ",errs);
			}
		}



});
