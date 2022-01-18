<%-- 
    Document   : yonetici_giris.jsp
    Created on : 16.Oca.2021, 20:50:48 PM
    Author     : KINA
--%>


<%@page import="database.DBUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link href="Styles/giris.css" rel="stylesheet" type="text/css"/>
<link href="https://fonts.googleapis.com/css?family=Oxygen:400,300,700" rel="stylesheet" type="text/css"/>
<link href="https://code.ionicframework.com/ionicons/1.4.1/css/ionicons.min.css" rel="stylesheet" type="text/css"/>

<%
    DBUser data = new DBUser();
    %>

<div class="signin cf">
    <div class="avatar"></div>
    <form action="" class="login" method="post">
        <div class="inputrow">
            <input type="text" id="email" placeholder="E-mail" name="email"/>
            <label class="ion-person" for="name"></label>
        </div>
        <div class="inputrow">
            <input type="password" id="sifre" placeholder="Şifre"name="sifre"/>
            <label class="ion-locked" for="pass"></label>
        </div>
        <input type="checkbox" name="remember" id="remember"/>
        <label class="radio" for="remember">Beni Hatırla</label>
        <input type="submit" value="GİRİŞ" name="giris"/>
    </form>
</div>

<%
    String mail = request.getParameter("email");
    String sifre = request.getParameter("sifre");
    String giris = request.getParameter("giris");
    String anamenu = request.getParameter("anamenu");
    Cookie ckMail = null;
    Cookie ckSifre = null;
    Cookie ckDurum = null;
    String name = "";
    String pass = "";
    HttpSession oturum = request.getSession(true);
    oturum.setAttribute("Ymail", mail);
    boolean durum = request.getParameter("remember") != null;

    if (giris != null && !mail.equals("") && !sifre.equals("")) {
        ckDurum = new Cookie("durum", "true");
        ckMail = new Cookie("mail", mail);
        ckSifre = new Cookie("sifre", sifre);

    }
    Cookie[] allCookies = request.getCookies();
    if (allCookies != null) {
        for (Cookie cook : allCookies) {
            if (cook.getName().equalsIgnoreCase("mail")) {
                name = cook.getValue();
            } else if (cook.getName().equalsIgnoreCase("sifre")) {
                pass = cook.getValue();
            }
        }
    }

    if (allCookies != null) {
        for (int i = 0; i < allCookies.length; i++) {
            if (allCookies[i].getValue().contains("true")) {
                response.sendRedirect(request.getContextPath() + "/yonetici_panel.jsp");
                break;
            } else {
                System.out.println("bulunamadi");
            }
        }
    }

    if (giris != null && !mail.equals("") && !sifre.equals("")) {
        data.yonetici_vericek(mail, sifre);
        if (DBUser.entry_permit) {
            if (durum) {
                ckDurum.setMaxAge(1000);
                response.addCookie(ckDurum);
                ckMail.setMaxAge(1000);
                response.addCookie(ckMail);
                ckSifre.setMaxAge(1000);
                response.addCookie(ckSifre);
            }
            response.sendRedirect("yonetici_panel.jsp");
        }
    }
    if (anamenu != null) {
        response.sendRedirect("index.jsp");
    }
%>