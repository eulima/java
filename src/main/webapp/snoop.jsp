<HTML>
<HEAD>
	<TITLE>JBossEAP6.0 JSP snoop page</TITLE>
	
	<%@ page import="java.lang.management.*" %>
	<%@ page import="java.util.*" %>
</HEAD>
<BODY>

<H1>WebApp JSP Snoop page</H1>
<img src="images/jbosscorp_logo.png">

<h2>JVM Memory Monitor</h2>
 
 
<table>
 
<tbody>
<tr>
<td colspan="2" align="center">
<h3>Memory MXBean</h3>
</td>
</tr>
 
<tr>
<td width="200">Heap Memory Usage</td>
<td>
<%=ManagementFactory.getMemoryMXBean().getHeapMemoryUsage()%>
</td>
</tr>
 
<tr>
<td>Non-Heap Memory Usage</td>
<td>
<%=ManagementFactory.getMemoryMXBean().getNonHeapMemoryUsage()%>
</td>
</tr>
 
<tr>
<td colspan="2"> </td>
</tr>
 
<tr>
<td colspan="2" align="center">
<h3>Memory Pool MXBeans</h3>
</td>
</tr>
 
</tbody>
</table>

 

 
 


<H2>Request information</H2>

<TABLE>
<TR>
	<TH align=right>Requested URL:</TH>
	<TD></TD>
</TR>
<TR>
	<TH align=right>Request method:</TH>
	<TD><%= request.getMethod() %></TD>
</TR>
<TR>
	<TH align=right>Request URI:</TH>
	<TD><%= request.getRequestURI() %></TD>
</TR>
<TR>
	<TH align=right>Request protocol:</TH>
	<TD><%= request.getProtocol() %></TD>
</TR>
<TR>
	<TH align=right>Servlet path:</TH>
	<TD><%= request.getServletPath() %></TD>
</TR>
<TR>
	<TH align=right>Path info:</TH>
	<TD><%= request.getPathInfo() %></TD>
</TR>
<TR>
	<TH align=right>Path translated:</TH>
	<TD><%= request.getPathTranslated() %></TD>
</TR>
<TR>
	<TH align=right>Query string:</TH>
	<TD><% if(request.getQueryString()!=null) out.write(request.getQueryString().replaceAll("<", "&lt;").replaceAll(">","&gt;")); %></TD>
</TR>
<TR>
	<TH align=right>Content length:</TH>
	<TD><%= request.getContentLength() %></TD>
</TR>
<TR>
	<TH align=right>Content type:</TH>
	<TD><%= request.getContentType() %></TD>
<TR>
<TR>
	<TH align=right>Server name:</TH>
	<TD><%= request.getServerName() %></TD>
<TR>
<TR>
	<TH align=right>Server port:</TH>
	<TD><%= request.getServerPort() %></TD>
<TR>
<TR>
	<TH align=right>Remote user:</TH>
	<TD><%= request.getRemoteUser() %></TD>
<TR>
<TR>
	<TH align=right>Remote address:</TH>
	<TD><%= request.getRemoteAddr() %></TD>
<TR>
<TR>
	<TH align=right>Remote host:</TH>
	<TD><%= request.getRemoteHost() %></TD>
<TR>
<TR>
	<TH align=right>Authorization scheme:</TH>
	<TD><%= request.getAuthType() %></TD>
<TR>
</TABLE>


<H2>Request headers</H2>






<H2>Request parameters</H2>





<H2>Request Attributes</H2>






</BODY>
</HTML>

