<%-- 
    Document   : Stockage
    Created on : 15 oct. 2012, 16:56:41
    Author     : logarithme
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="chat.Message_chat" %>
<%@page import="chat.GestionMessage" %>

<jsp:useBean id="MsgGest_Bean" class="chat.GestionMessage" scope="application"> 
</jsp:useBean>
<%
    getServletContext().setAttribute("last_mod", System.currentTimeMillis());
    
    String text = (String)request.getParameter("saisie");
    String pseudo = (String)request.getSession().getAttribute("pseudo");
    if (text != null && pseudo != null)
    {
        MsgGest_Bean.addMessage(new Message_chat(pseudo, text));
    }
 %>
 <jsp:include page="Affichage.jsp"/>
 
