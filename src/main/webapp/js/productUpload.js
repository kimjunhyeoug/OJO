const selectRequest = new XMLHttpRequest();
function select() {
	let url = './AddressController';
	selectRequest.open('POST', url, true)
	selectRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	let gu = document.getElementById('postgu').value;
	selectRequest.send('gu=' + encodeURIComponent(document.getElementById('postgu').value));
	selectRequest.onreadystatechange = selectProcess;
	console.log(gu);
	}
function selectProcess() {
	if(selectRequest.readyState == 4 && selectRequest.status == 200){
		//console.log(selectRequest.responseText)
		let obj = eval('(' + selectRequest.responseText + ')');
		// console.log(obj);
		let result = obj.res;
		
		let sel = document.getElementById('postdong');
		console.log(sel);
		sel.innerHTML ='<option>선택</option>';
		for (let i=0; i<result.length; i++){
			let opt = document.createElement("option")
			sel.innerHTML += '<option>' + result[i][0].dong + '</option>'
			
			//sel.innerHTML = result[i][0].dong
			console.log(result[i][0].dong);
			
		}
		
		
		
		}
		
				
	
	
}
	/*
	$.ajax({
		url : '/AddressController',
		method: 'post',
		asyn: false,
		
		data: {
			gu : postdong
		},
		
		success : function(result){
			console.log('요청성공');
			console.log(typeof result);
			console.log(result);
			//let obj = eval('(' + result  + ')');
			//console.log(obj);
			
		},
		error: e => {
			console.log(e.status + ': ' + e.statusText);
		}
		
	});
	*/
