<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="com.calf.framework.util.CodeNameUtils"%>
<%@ include file="/jsp/include/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link href="<%=path%>/res/css/base.css" rel="stylesheet" type="text/css"/>
<%@ include file="/jsp/include/basejs.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
			$('#roleLevel').val('${entity.roleLevel}');
		$('#dataStatus').val('${entity.dataStatus}');
	});
</script>
</head>
<body>

<div class="ajaxtabdiv11">
	<div class="div_tab_header">
	    <div class="div_tab_header_1">
	        <div class="corner-1-report_nav"></div>
	        <div class="corner-2-report_nav"></div>
	        <ul class="rptMenu ajaxtabs">		            
	            <li><a href="<%=path %>/admin/um/role_list.action">角色列表</a></li>
	           <li><a href="#tab_1" class="current">${title}</a></li>
	        </ul>
	    </div>
	</div><!--div_tab_header-->
	
	<div class="div_tab_content_qry">
            <div id="tab_1" class="tab_content">
            
<form id="validateForm" name="validateForm" action="<%=path %>/admin/um/role_edit.action" method="post">
	<input type="hidden" name="qryHex" value="${qryHex}"/>
	<input type="hidden" name="event" value="${event}"/>
	<input type="hidden" name="entity.roleId" id="roleId" value="${entity.roleId}"/>
	<table border="0" cellspacing="0" cellpadding="0" class="editTable">
		<tr>
			<th colspan="4" class="left">${title}</th>
		</tr>
		<tr>
			<td class="right" style="width:20%;">角色名称</td>
			<td style="width:80%;">
			<input type="text" name="entity.roleName" class="formText {required: true,byteRangeLength:[0,100],messages: {required:'请输入角色名称'}}" id="roleName" value="${entity.roleName}"/>
			<label class="required">*</label>
			</td>
		</tr>
		<tr>
			<td class="right" style="width:20%;">角色级别</td>
			<td style="width:80%;">
			<%=CodeNameUtils.getInstance().generateSelect("<select name=\"entity.roleLevel\" id=\"roleLevel\" class=\"formSelect {required: true,messages: {required:'请选择角色级别'}}\">","","g_um_dept_level")%>
			<label class="required">*</label>
			</td>
		</tr>
		<tr>
			<td class="right" style="width:20%;">备注</td>
			<td style="width:80%;">
			<input type="text" name="entity.note" class="formText {byteRangeLength:[0,200]}" id="note" value="${entity.note}"/>
			
			</td>
		</tr>
		
		<tr>
		<th class="center" colspan="2"><span id="savetip" class="ajaxtip">数据保存中，请稍候……</span><input type="submit" class="btn1" value="保 存"/><input type="button" class="btn1" value="返 回" onclick="history.go(-1)"/></th>
		</tr>
	</table>	
</form>

		</div>            
  	</div><!--div_tab_content-->
</div><!--ajaxtabdiv-->
</body>
</html>