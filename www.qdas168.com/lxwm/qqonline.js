function sc(){  
	var x = 15,y,pos,qqonline = document.getElementById("qqonline"),qqminimize = document.getElementById('qqminimize'),hideqq = document.getElementById('hideqq'),qqstat = document.cookie.match(/qqstat=([^;]*)(;|$)/)||'';qqstat=qqstat&&qqstat[1];
	qqminimize.onclick = function(){
		document.cookie = "qqstat=minimized";
		qqonline.style.display = 'none';
		hideqq.style.display = 'block';
	}
	hideqq.onclick = function(){
		document.cookie = "qqstat=opened";
		qqonline.style.display = 'block';
		hideqq.style.display = 'none';		
	}
	if(qqstat == 'minimized'){
		qqonline.style.display = 'none';
		hideqq.style.display = 'block';
	}else{
		qqonline.style.display = 'block';
		hideqq.style.display = 'none';		
	}
	if(window.innerHeight){
		pos = window.pageYOffset;
	}else if(document.documentElement && document.documentElement.scrollTop) {
		pos = document.documentElement.scrollTop;
	}else if(document.body) {
		pos = document.body.scrollTop;
	}
	y=pos+50;
	qqonline.style.top = y+"px";
	qqonline.style.left = x+"px";
	hideqq.style.top = (y+50)+"px";
}
window.onscroll = window.onresize = window.onload = sc;
window.onload = function(){
	document.body.appendChild(document.getElementById('qqonline'));
	document.body.appendChild(document.getElementById('hideqq'));
	sc();
}
