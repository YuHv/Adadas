<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
 <script type="text/javascript">
	var xmlhttp;
		function main(url,method){
	
		if(window.XMLHttpRequest){
			xmlhttp = new XMLHttpRequest();
		}else{
			xmlhttp = new ActiveXObject("Microsoft.XMLHttp");
		}
		
		xmlhttp.onreadystatechange=method;
		xmlhttp.open("get",url,true);
		xmlhttp.send();
		}
		
		
		
		function show(){
	
			main("ReviewAction!listUserinfoByPage?currentIndex=0",function (){
			if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
				document.getElementById("show").innerHTML=xmlhttp.responseText;
			}
		});
			
		}
		function show1(id){

			main("ReviewAction!listUserinfoByPage?currentIndex="+id+"",function (){
			if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
				document.getElementById("show").innerHTML=xmlhttp.responseText;
			}
		});
		}
	</script>
	</head><body onload="show()">
	
	<div style="margin-top:50px">
	  	<center>
		<ul class="pagination pagination-lg">
		 <li 	><a onclick="show1(0)"" title="首页">&laquo;</a></li>
		 <s:iterator var="counter" begin="1" end="#request.pg.pageCount">
    	<s:if test="#counter==#request.pg.currentPage">
    	 <li  title="当前页"  >
    	 </s:if>
    	  <s:else>
    	 <li>
    	  </s:else>
    	 <a title="转到第<s:property value="#counter" />页" onclick="show1(<s:property value="#request.pg.indexes[#counter-1]" />)"><s:property value="#counter" /></a></li>

    </s:iterator>
      <li>
      <a onclick="show1(<s:property value="#request.pg.lastIndex" />)" title="尾页">&raquo;</a>
      </li>
				</ul>
		</center>
	  </div>
</body></head>
