const fs = require('fs');

const wasmBuffer = fs.readFileSync('./ramxyz.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { ram3value } = wasmModule.instance.exports;
	var d=0;
	var v=0;
	var dd=0;
	var sizes=ram3value(0,0,0,0);
	console.log("\033[42;30m\n");
	for(d=0;d<sizes;d++)for(dd=0;dd<3;dd++)ram3value(d+1,1,d*3+dd,dd);

	for(d=0;d<sizes;d++){
		for(dd=0;dd<3;dd++){
			v=ram3value(d+1,0,0,dd);
			if(v!=d*3+dd)console.log("error--------------");
			console.log(d,"    ",dd,"       ",v);
		}
	}

});
