<%-- 
    Document   : Affichage
    Created on : 15 oct. 2012, 16:56:52
    Author     : logarithme
--%>

<%@page import="com.sun.corba.se.spi.activation.Repository"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="chat.Message_chat" %>
<%@page import="chat.GestionMessage" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat</title>
    </head>
    <body>
        <h1>Mon Chat a moi que j'ai</h1>
        <jsp:useBean id="MsgGest_Bean" class="chat.GestionMessage" scope="application"> 
        </jsp:useBean>
        <%
            for(int i=0; i<MsgGest_Bean.getNbMessage(); i++)
            {
                out.println("<p>" + MsgGest_Bean.getMessages().get(i) + "</p>");
            }
        %>
    </body>
</html>
