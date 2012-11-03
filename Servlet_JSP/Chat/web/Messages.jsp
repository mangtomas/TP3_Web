<%-- 
    Document   : Messages
    Created on : 14 oct. 2012, 16:21:25
    Author     : logarithme
--%>

<%@page import="com.sun.org.apache.xpath.internal.compiler.OpCodes"%>
<%@page import="chat.Message_chat" %>
<%@page import="chat.GestionMessage" %>
<%@page import="com.sun.corba.se.impl.protocol.giopmsgheaders.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  
    long last = (Long)getServletContext().getAttribute("last_mod");
    long cur = request.getDateHeader("If-Modified-Since");

    if (request.getMethod() == "GET")
    {
        if (last > cur)
        {
%>
            <jsp:include page="Affichage.jsp"/>
<%
        }
        else
        {
            response.sendError(304, "Not Modified");
        }
        
        response.setDateHeader("Last-Modified", System.currentTimeMillis());
    }
    else if (request.getMethod() == "POST")
    {
%>
        <jsp:forward page="Stockage.jsp"/>
<%
    }
%>
