const fs = require('fs');

const wasmBuffer = fs.readFileSync('./ram3d.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { ram3d } = wasmModule.instance.exports;
	var x=0;
	var y=0;
	var z=0;
	var dx=0;
	var dy=0;
	var dz=0;
	var errs=0;
	console.log("\033[42;37m\n");
	x=ram3d(0,0,0,0,0);
	y=ram3d(0+1,0,0,0,0);
	z=ram3d(0+2,0,0,0,0);
	for(dz=0;dz<z;dz++){
		for(dy=0;dy<y;dy++){
			for(dx=0;dx<x;dx++){
				ram3d(dx+3,dy,dz,1,dx+(dy*x)+x*y*dz);
			}
		}
	}
	for(dz=0;dz<z;dz++){
		for(dy=0;dy<y;dy++){
			for(dx=0;dx<x;dx++){
				errs=ram3d(dx+3,dy,dz,0,0);
				if(errs!=dx+(dy*x)+x*y*dz)console.log("---error");
				console.log(dx,"  ",dy,"   ",dz,"   ",errs);
			}
		}
	}



});
