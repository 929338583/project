/**
 * 提交id值为contentForm的表单
 * @param url
 */
function post(url){
	document.getElementById('contentForm').action = getCxtPath()+url;
	document.getElementById("contentForm").submit();
}

/**
 * 创建表单并封装参数后提交
 * @param url 地址
 * @param params 数组
 */
function exec(url,params){
	var form = document.createElement("form");
	form.action = getCxtPath() + url;
	form.method = "post";
	for(var x in params){
		var input = document.createElement("input");
		input.name = x;
		input.value = params[x];
		form.appendChild(input);
	}
	var btn = document.createElement("input");
	btn.type="submit";
	form.appendChild(btn);
	document.body.appendChild(form);
	form.submit();
	document.body.removeChild(form);
}

/**
 * 返回
 * @param url
 */
function back(url){
	window.location.href = getCxtPath() + url;
}

/**
 * 获取contextPath
 * @returns
 */
function getCxtPath(){
	var path = document.location.pathname;
	var subString = path.substr(1).indexOf("/");
	var cxtPath = path.substr(0,subString + 1);
	return cxtPath;
}