<%-- 
    Document   : kayit_formu.jsp
    Created on : 12.Oca.2021, 23:03:38 PM
    Author     : KINA
--%>

<%@page import="database.DBUser"%>
<%@page import="data.yonetici"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <link rel="stylesheet" href="Styles/kayıtformu.css" type="text/css"/>
    <body style="background-image: url(https://media.discordapp.net/attachments/577961578138435615/931587056973512745/otopark2.jpg?width=1920&height=1080);background-repeat:no-repeat">
</head>

<body>
<div id="kayitFormu">
    <form action="" method="post" id="contact">
        <h3>Karadağ Park Kayıt Formu</h3>
        <input type="text" name="firstname" placeholder="Adınız" required /> 

        <input type="text" name="lastname" placeholder="Soyadınız" required />

        <input type="tel" name="number" placeholder="Telefon Numaranız" required />

        <input type="text" name="carPlate" placeholder="Aracınızın Plakası" required />
        
        <input type="email" name="email" placeholder="E-Posta Adresiniz" required />
        
        <input type="text" name="password1" placeholder="Paronanız" required />
        
        <input type="text" name="password2" placeholder="Parolanız Tekrar" required />
        
        <input class="btn" name="submit" type="submit" id="contact-submit" value="KAYIT OL" />
        
        <input class="btn" name="geri" type="submit" id="contact-submit" value="GERİ DÖN" />
        
    </form>            
</div>
</body>
    
    <%
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phone_number = request.getParameter("number");
        String car_plate = request.getParameter("carPlate");
        String email = request.getParameter("email");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String kytbtn = request.getParameter("submit");
        String geribtn = request.getParameter("geri");

        yonetici yonetici = new yonetici(firstname, lastname, phone_number, car_plate, email, password1, password2);
        DBUser bduser = new DBUser();

        if (kytbtn != null) {

            if (!firstname.equals("") && !lastname.equals("")
                    && !phone_number.equals("") && !car_plate.equals("")
                    && !email.equals("") && !password1.equals("")
                    && !password2.equals("")) {
                bduser.insert(yonetici);
                response.sendRedirect("index.jsp");
            } else {
                out.print("<p style=\"color:white; margin-left: 680px;\">Bütün alanları doldurun</p>");
            }
        }
        if (geribtn != null) {
            response.sendRedirect("index.jsp");
        }
    %>
    
</html>
