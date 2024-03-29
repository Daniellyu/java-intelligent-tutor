<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.io.*" %>
<%@ page
	import="itjava.scraper.*, itjava.presenter.*, itjava.model.*, itjava.view.*, java.util.HashMap, java.util.ArrayList, java.sql.*, java.util.Enumeration, java.security.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon"
	href="http://experiments.eecs.oregonstate.edu:8080/favicon.ico"
	type="image/x-icon" />
<title>Code Results..</title>
<link href="css/maincss.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/jquery.syntaxhighlighter.min.js"></script>
<script type="text/javascript" language="javascript" src="js/ratingsys.js"></script>
<script type="text/javascript" language="javascript" src="js/main.js"></script>
<script src="MD5.js"></script>
<!-- Include jQuery Syntax Highlighter 
<script type="text/javascript"
	src="js/jquery.syntaxhighlighter.min.js"></script>
 Initialize jQuery Syntax Highlighter -->
<script type="text/javascript">
	$.SyntaxHighlighter.init();
</script>
</head>

<body>
<table width="1024" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td colspan="3"><%@ include file="/modules/headers/header5.jsp"%></td>
	</tr>
	<tr>
		<td width="1" bgcolor="#122222"></td>
		<td width="1022">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="5"></td>
				<td valign="top" style="width: 522px;" align="center">
				<form action="CodeDisplayServlet" method="post"
					name="codeDisplayForm" id="codeDisplayForm"
					enctype="multipart/form-data">
				<table align="center" style="padding-top: 10px; margin: 0px;"
					cellspacing="0" cellpadding="0">
					<tr style="color: #fff;">
						<td colspan="3" bgcolor="#122222" align="center"
							style="padding: 0px; margin: 0px; color: #FFF; font-weight: bold; font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Industry Code Results</td>
					</tr>
					<tr>
						<td	style="width: 1px; background-color: #122222; padding: 0px; margin: 0px; height: 100px;"></td>
						<td  align="center">
						<table cellspacing="0" cellpadding="0">
							<tr>
								<td>&nbsp;</td>
								<td>

								
						<%
							ArrayList<String> industryCodePaths = (ArrayList<String>) session.getAttribute("fileLocation");
							
							
							String codePath = industryCodePaths.get(Integer.parseInt(request.getParameter("linkIndex").toString()));
						%>
								
								<pre class="language-java">					
							    <%
								BufferedReader input = new BufferedReader(new FileReader(codePath));
								String line = "";
								while ((line = input.readLine()) != null) {
								out.println(line);
								}
								input.close();
								%> 
								</pre>
								
								</td>
							</tr>
						</table>
						</td>
						<td
							style="width: 1px; background-color: #122222; padding: 0px; margin: 0px;"></td>
					</tr>
					<tr>
						<td colspan="3" bgcolor="#122222" height="1"
							style="padding: 0px; margin: 0px;"></td>
					</tr>
				</table>
				</form>
				</td>
				<td width="5"></td>
			</tr>
			<tr>
				<td height="10" colspan="2"></td>
				<td></td>
			</tr>
		</table>
		</td>
		<td width="1" bgcolor="#122222"></td>
	</tr>
	<tr>
		<td height="1" bgcolor="#122222" colspan="3"></td>
	</tr>
</table>
</body>
</html>