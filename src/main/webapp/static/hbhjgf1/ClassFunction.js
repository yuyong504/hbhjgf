//������regInput(obj, reg, inputStr)
//���ܣ������ı����������ݽ���������ʽƥ��
//������ļ���ʹ��
//����<input name="D" type="text" id="D"  onKeyPress= "return regInput(this,/^[0-9]{0,4}$/,String.fromCharCode(event.keyCode))" size="2" maxlength="2">
function regInput(obj, reg, inputStr){
		var docSel	= document.selection.createRange()
		if (docSel.parentElement().tagName != "INPUT")	return false
		oSel = docSel.duplicate()
		oSel.text = ""
		var srcRange	= obj.createTextRange()
		oSel.setEndPoint("StartToStart", srcRange)
		var str = oSel.text + inputStr + srcRange.text.substr(oSel.text.length)
		return reg.test(str)
}

////////////////// Dreamweaver ��ת�˵���ʹ�õ� JS
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}


function selectall(form){
if(form.all.checked){
for(i=0;form.answer[i]!=null;i++){
form.answer[i].checked=true;}}
else{
for(i=0;form.answer[i]!=null;i++){
form.answer[i].checked=false;}
}
}

function gotab ( nm,num,cn,s1,s2 )
	{
		for(i=1;i<=cn;i++){
			if( i==num ){
			document.getElementById(nm+"_div"+i).style.display="block";
			document.getElementById(nm+"_btn"+i).className=s1;
			}else{
			document.getElementById(nm+"_div"+i).style.display="none";
			document.getElementById(nm+"_btn"+i).className=s2;
			}
		}
		
	}