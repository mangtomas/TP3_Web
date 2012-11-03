<%-- 
    Document   : Messages
    Created on : 14 oct. 2012, 16:21:25
    Author     : logarithme
--%>

<%@page import="com.sun.org.apache.xpath.internal.compiler.OpCodes"%>
<%@page import="java.util.ArrayList"%>
<%@page import="chat.Message_chat" %>
<%@page import="com.sun.corba.se.impl.protocol.giopmsgheaders.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! ArrayList<Message_chat> message_list = new ArrayList<Message_chat>(); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Mon Chat a moi que j'ai</h1>
        <%
            response.setIntHeader("Refresh", 5);
            
            String text = (String)request.getParameter("saisie");
            String pseudo = (String)request.getSession().getAttribute("pseudo");
            if (text != null && pseudo != null)
            {
                message_list.add(new Message_chat(pseudo, text));
            }
            
            for(int i=0; i<message_list.size(); i++)
            {
                out.println("<p>" + message_list.get(i) + "</p>");
            }
        %>
    </body>
</html>
