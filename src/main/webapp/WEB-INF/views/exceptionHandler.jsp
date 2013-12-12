<%@ page isErrorPage="true" import="java.io.*" %>
<%-- <%@page import="org.jmesa.web.HttpServletRequestWebContext"%>
<%@ taglib uri="/WEB-INF/tld/jmesa.tld" prefix="jmesa" %> --%>

<html>
    <head>
    	<title>Exceptional Event Occurred!</title>
    	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=7" />
		<jsp:include page="include.jsp"></jsp:include>
		<script type="text/javascript">
			function getEmployeeApplicationForm(oidValue)
			{
				window.location.href = 'editEmployeeApplicationForm?oid=' + oidValue;
			}
		</script>
		<style>
			body, p { font-family:Tahoma; font-size:10pt;
		        padding-left:30; }
			pre { font-size:8pt; }
		</style>
    </head>
    
    <body style="background:#6688bb;">
		<div style="background-color:#09548B;height:32px;text-align:center;padding-top:5px;padding-bottom:5px;width:950px;margin:0;">
			<table width="100%">
				<tr>
					<td width="23%"><span id="ctl00_ContentPlaceHolder1_Label2_6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
		   			<td width="46%" style="text-align:right;"><span id="ctl00_ContentPlaceHolder1_Label3" style="color:White;font-size:16px;font-weight:bold;">D.C.P.S. - Defined Contribution Pension Scheme</span></td>
					<td width="14%" style="text-align:right;"><span id="ctl00_ContentPlaceHolder1_Label5" style="color:Black;font-size:10px;font-weight:bold;vertical-align:bottom;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A product of</span></td>
		   			<td width="17%"><span id="ctl00_ContentPlaceHolder1_Label6" style="color:White;font-size:14px;font-weight:bold;">&nbsp;Acura Softwares</span></td>
		   		</tr>
		   		<tr>
		   			<td width="100%" colspan="4">&nbsp;</td>
		   		</tr>
		   	</table>
		</div>
		<br />
		<br />
		<br />
		<!--<table width="100%">
			<tr>
				<td style="text-align:center;">
					<%-- Exception Handler --%>
					<font color="red">
						<u><%= "System Error. Please contact us at Acura Softwares to resolve this error." %></u>
					    <br />
					    <u><%= "Contact Name : Mr. Amol Gadre Mobile Number: 9423004767 Phone Number: 020-32670355" %></u>
					</font>
					<br />
					<a href="${pageContext.request.contextPath}/login/login.action">Sign On Again</a>
					<%
						//out.println("");
						if (exception != null)
							out.print("<br /><br /><br /><textarea readonly=\"true\" cols=\"60\" rows=\"10\">" + exception.toString() + "\n\n" + exception.getMessage() + "</textarea>");
						//out.println("");
					%>
				</td>
			</tr>
		</table>
	--></body>
</html>
