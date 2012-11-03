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

<jsp:useBean id="MsgGest_Bean" class="chat.GestionMessage" scope="application"> 
</jsp:useBean>
<%  
    if (request.getMethod() == "GET")
    {
        int lastMsg = -1;
        for( Cookie c : request.getCookies())
        {
            if (c.getName().compareTo("lastMsg") == 0)
            {
                lastMsg = Integer.parseInt(c.getValue());
            }
        }
        
        if (lastMsg < MsgGest_Bean.getNbMessage())
        {
%>
            <jsp:include page="Affichage.jsp"/>
<%          
            response.addCookie(new Cookie("lastMsg", "" + MsgGest_Bean.getNbMessage()));
            response.setHeader("Refresh", "1" );
        }
        else
        {
            response.sendError(304, "Not Modified");
        }
    }
    else if (request.getMethod() == "POST")
    {
%>
        <jsp:forward page="Stockage.jsp"/>
<%
    }
%>
