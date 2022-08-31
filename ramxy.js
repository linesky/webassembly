const fs = require('fs');

const wasmBuffer = fs.readFileSync('./ramxy.wasm');
WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { ram2value } = wasmModule.instance.exports;
	var d=0;
	var v=0;
	var dd=0;
	var sizes=ram2value(0,0,0,0);
	console.log("\033[42;30m\n");
	for(d=0;d<sizes;d++)for(dd=0;dd<2;dd++)ram2value(d+1,1,d*2+dd,dd);

	for(d=0;d<sizes;d++){
		for(dd=0;dd<2;dd++){
			v=ram2value(d+1,0,0,dd);
			if(v!=d*2+dd)console.log("error--------------");
			console.log(d,"  ",dd,"   ",v);
		}
	}

});
