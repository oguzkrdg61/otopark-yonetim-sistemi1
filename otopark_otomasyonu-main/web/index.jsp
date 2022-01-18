<%-- 
    Document   : index.jsp
    Created on : 12.Oca.2021, 05:25:22 AM
    Author     : KINA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .ortali{
        margin:auto;
        text-align:center
    }
</style>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="Styles/giris.css" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <body style="background-image: url(https://media.discordapp.net/attachments/577961578138435615/931587056973512745/otopark2.jpg?width=1920&height=1080);background-repeat:no-repeat">

    <div class="row mt-xl-5">
        <div class="col-1">
            <form action="kayit_formu.jsp" method="post">
                <button style="float:right" type="submit" class="btn btn-lg btn-warning" href="#">KAYIT OL</button>
            </form>          
        </div>
        <div class="col-1">
            <form action="kullanici_giris.jsp" method="post">
                <button  type="submit" class="btn btn-lg btn-warning" href="#">ÜYE GİRİŞİ</button>

            </form>
        </div>
        <div class="col-8">
            <h1 style="text-align:center;font-family: arial;color:white"><b style="border-bottom:10px solid white"> KARADAĞ PARK'A HOŞGELDİNİZ</b></h1>
        </div>
        <div class="col-2 " style="float:right">
            <div class="" style="float:right;">
                <form action="yonetici_giris.jsp" method="post">
                    <button type="submit" class="btn btn-lg btn-warning " style="margin-right:20px" href="#">PANEL GİRİŞİ</button>
                </form>
            </div>
        </div>
    </div>
    <div style="height:200px" class="bos"></div>

    <div class="row">

        <div class="col-5 ">
            <table class="table  table-striped " style="margin-left:69px;min-height:550px;text-align:center">
                <thead class="bg-warning" style="background-color:orangered">
                    <tr>
                        <th  style="text-align:center" colspan="4">OTOPARK ÜCRETLERİ</th>
                    </tr>
                    <tr>
                        <th class="ortali">SÜRE</th>
                        <th class="ortali">Motosiklet</th>
                        <th class="ortali">Otomobil</th>
                        <th class="ortali">Kamyonet</th>
                    </tr>
                </thead>
                <tbody style="background-color:white">
                    <tr >
                        <td class="ortali">0 -1 Saat</td>
                        <td class="ortali">4,00 TL</td>
                        <td class="ortali">8,00 TL</td>
                        <td class="ortali">10,00 TL</td>
                    </tr>
                    <tr>
                        <td>1 – 3 Saat</td>
                        <td>6,00 TL</td>
                        <td>10,00 TL</td>
                        <td>12,00 TL</td>
                    </tr>
                    <tr>
                        <td>3 – 6 Saat</td>
                        <td>10,00 TL</td>
                        <td>15,00 TL</td>
                        <td>20,00 TL</td>
                    </tr>
                    <tr>
                        <td>6 – 12 Saat</td>
                        <td>15,00 TL</td>
                        <td>20,00 TL</td>
                        <td>25,00 TL</td>
                    </tr>
                    <tr>
                        <td>12 – 24 Saat</td>
                        <td>20,00 TL</td>
                        <td>35,00 TL</td>
                        <td>40,00 TL</td>
                    </tr>
                </tbody>
        </table>
  </div>

        <div class="col-1"></div>
        <div class="col-5" style="margin-left:31px;">
            <div class="card" style="min-height:550px">
                <div class="card-body">
                    <ul style="font-size:20px">
                        <h3 class="text-danger" style="text-align:center;">
                            <b>
                                OTOPARK KURALLARI
                            </b>
                        </h3>
                        <li>
                            <p>
                                Otoparklarda araç yıkanmaz, küllük boşaltılmaz, araçtan çıkan artıklar atılmaz. Bu hükme uymayanlara parkta kalış zamanına göre alınacak ücret %100 zamlı uygulanır.
                            </p>
                        </li>
                        <li>
                            <p>
                                DHMİ personelinin kullandığı özel araçlar, resmi, askeri ve kordiplomatik plakalı araçlardan otopark ücreti alınmaz.
                            </p>
                        </li>
                        <li>
                            <p>
                                Bedensel engellilerin ve gazilerin kullandığı araçlara, (Her defasında azami 15 güne kadar) otopark ücreti alınmaz. 15 günü geçen park sürelerinde otopark ücret tarifesi üzerinden ücret uygulanır.
                            </p>
                        </li>
                        <li>
                            <p> Araçların çizgiler arasında ve düz olarak park edilmesi esastır.</p>
                        </li>
                        <li>
                            <p>
                                Çıkışta otopark kartını/biletini ibraz etmeyerek aynı gün giriş çıkış yapan araçlardan, park süresine bakılmaksızın 12-24 saatlik park ücreti alınır.
                            </p>
                        </li>
                        <p style="font-size:24px" >
                            <b class="text-danger" style="text-align:center">
                                OTOPARK ÜCRETİNİ ÖDEMEDEN LÜTFEN ÇIKIŞA GİTMEYİNİZ!
                            </b>
                        </p>
                    </ul>
                </div>
            </div>
        </div>
        </body>
        </html>

