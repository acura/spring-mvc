<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@page import="com.sample.util.GenericUtils"%> --%>
<%-- <%@include file="include.jsp" %> --%>

<html>
<head>
		<title>
		<%-- <% if (GenericUtils.isNotNullOrEmpty(request.getParameter("id")))
				out.print("Edit");
		else
			out.print("Add");
		%> --%>
		Product
	</title>
	
	<style>
	.error {
		color: #ff0000;
	}
	 
	.errorblock {
		color: #000;
		background-color: #ffEEEE;
		border: 3px solid #ff0000;
		padding: 8px;
		margin: 16px;
	}
	</style>
	
	<%-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=7" />--%>
	
	<script type="text/javascript">

		function acceptOnlyCharacterPatient(obj)
		{
			var regex = /^[ÒA-Za-z _]*[ÒA-Za-z][ÒA-Za-z _]*$/;
	
			if (regex.test(obj.value) == false)
			{
				obj.value='';
				return;
			}
			return; 
		}

		function formatForNumeric(obj)
        {
                var regex = /^\d\d*\.?\d*$/;
        
                if (regex.test(obj.value) == false)
                {
                        obj.value='';
                        return;
                }
                return;
        }
		function capWords(str,name)
        {
                 words = str.split(" ");
                 for (i=0 ; i < words.length ; i++)
                 {
                 testwd = words[i];
                 firLet = testwd.substr(0,1); //lop off first letter
                 rest = testwd.substr(1, testwd.length -1);
                 words[i] = firLet.toUpperCase() + rest;
                 }
                 document.forms[0].elements[name].value = words.join(" ");
        }
        
	</script>
</head>
<body style="background:#b8c8e0;">
	<table style="width: 100%;">
	    <tr>
	    <td style="width: 100%;" class="nav">
	    	<%-- <jsp:include page="menu.jsp"></jsp:include> --%> 
	    </td>
	    </tr>
	    </table>
	    
	    <table style="width: 100%;">
	    <tr>
	    <td style="width: 100%;" >
	    <%-- commandName="${pageContext.request.contextPath}/product/save" --%>
	    	<form:form method="POST" action="${pageContext.request.contextPath}/product/save" >
			<%-- <form name="productForm" action="saveProduct"> --%>
			<table border="0" cellpadding="0" cellspacing="0"  style="width: 100%; text-align: center;">
			    <tr>
	               	<td  style="background-color:#729fcf;height:27px;text-align:center; ">
	                   	<span id="ctl00_ContentPlaceHolder1_Label3" style="color:White;font-size:Medium;font-weight:bold;">Products</span>
					</td>
				</tr>
			    <tr >
			    <td style="text-align: center; width: 100%;">
			    	<table style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center;" cellpadding="0" cellspacing="0" width="100%" align="center" border="0">
					<tr>
						<td style="text-align: center; width: 100%;" valign="top">
			            	<table style="width: 100%;">
								<tr style="height: 10px;">
									<!-- <s:hidden key="id" value="%{id}"></s:hidden>  value="${productInstance.id}" -->
									<%-- <form:hidden path="id" /> --%> 
		                        </tr>
		                        
		                         <tr style="height: 10px;">
    								<td>
    									<form:label path="productName">Product Name: </form:label>
    									<form:input path="productName" onkeyup="acceptOnlyCharacterPatient(this);" onchange="capWords(this.value, this.name);"/>
   									</td>
		                        </tr>
		                        
		                         <tr style="height: 10px;">
									<td>
    									<form:label path="price">Product price: </form:label>
    									<form:input path="price" maxlength="13" size="30" onkeyup="formatForNumeric(this);"/>
   									</td>
		                        </tr>
		                        
		                        <tr style="height: 10px;">
									<td>
										<form:label path="pricingRoutine">Pricing Rountine Class: </form:label>
										<form:select path="pricingRoutine">
										   <form:option value="NONE" label="Choose pricing routine " />
										   <form:option value="com.sample.routine.ZonalPricingRoutine" label="com.sample.routine.ZonalPricingRoutine" />
										   <form:option value="com.sample.routine.ZonalAgeBasedPricingRoutine" label="com.sample.routine.ZonalAgeBasedPricingRoutine"/>
										   
										   <%-- <form:options items="${countryList}" /> --%>
										</form:select>
									</td>
		                        </tr>
		                        
		                        <tr >
						        	<td style="padding-right: 0px; height:30px">
						        	<div style="height: 30em;"></div>
						        	</td>
						        </tr> 
						        
		                  </table>
					    </td>
				    </tr>
					</table>
					</td>
					</tr>
					<tr>
						<td  style="background-color:#729fcf;height:27px;text-align:center; height: 30px;" align="center">
							<input type="submit" value="Save Product" />
					        <input id="cencelButton" type="button" style="width:130px;"  onclick="goToHomePage();" value="Cancel" />
				        </td>
					</tr> 
				    <tr>
				      <td>&nbsp;</td><td></td>
				    </tr>
				</table>
			</form:form>
	    </td>
	    </tr>
	    </table>
	
</body>
</html>