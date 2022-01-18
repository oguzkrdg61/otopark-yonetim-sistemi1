<%-- 
    Document   : kullanici_giris.jsp
    Created on : 14.Oca.2021, 22:05:29 PM
    Author     : KINA
--%>

<%@page import="database.DBUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link href="Styles/giris.css" rel="stylesheet" type="text/css"/>
<link href="https://fonts.googleapis.com/css?family=Oxygen:400,300,700" rel="stylesheet" type="text/css"/>
<link href="https://code.ionicframework.com/ionicons/1.4.1/css/ionicons.min.css" rel="stylesheet" type="text/css"/>


<div class="signin cf">
    <div class="avatar"></div>
    <form class="login" action=""  method="post">
        <div class="inputrow">
            <input  type="text" name="email_load" placeholder="Email"/>
            <label class="ion-person" for="name"></label>
        </div>
        <div class="inputrow">
            <input type="password" id="sifre" placeholder="Şifre" name="password_load"/>
            <label class="ion-locked" for="pass"></label>
        </div>
        <input type="checkbox" name="kosul" id="remember"/>
        <label class="radio" for="remember">Beni Hatırla</label>
        <input type="submit" value="GİRİŞ" name="giris"/>
    </form>
</div>
 
<% 
    String mail = request.getParameter("email_load");
    String sifre = request.getParameter("password_load");
    String giris = request.getParameter("giris");
    String anamenu = request.getParameter("anamenu");

    DBUser db = new DBUser();

    HttpSession oturum = request.getSession(true);
    oturum.setAttribute("Kmail", mail);

%> 
<%    if (mail != null && sifre != null && giris != null) {
        db.vericek(mail, sifre);
        if (DBUser.entry_permit) {
            response.sendRedirect("kullanici_panel.jsp");
        }
    }
    if (anamenu != null) {
        response.sendRedirect("index.jsp");
    }
%>  