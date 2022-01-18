package database;

import data.yonetici;
import data.kullanici;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBUser {

    yonetici user1 = new yonetici();
    static final String DB_URL = "jdbc:mysql://localhost:3306/otopark";
    static final String USER = "root";
    static final String PASSWORD = "root";
    public static boolean entry_permit = false;
    public String cekad;
    public String ceksoyad;
    public String ceknumara;
    public String cekplaka;
    public String cekeposta;
    public String ceksifre;

    public void insert(yonetici user) {
        Connection con = null;
        PreparedStatement psnt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            String sql = "INSERT INTO kisiler(ad, soyad, numara, plaka, eposta, sifre) VALUES(?, ?, ?, ?, ?, ?)";
            psnt = con.prepareStatement(sql);
            psnt.setString(1, user.getFirstName());
            psnt.setString(2, user.getLastName());
            psnt.setString(3, user.getPhone_number());
            psnt.setString(4, user.getCar_plate());
            psnt.setString(5, user.getEmail());
            psnt.setString(6, user.getPassword1());
            psnt.executeUpdate();
            psnt.close();
            con.close();
        } catch (Exception e) {
            System.out.println("HATA :  " + e);
        }
    }

    public void vericek(String mail, String sifre) {
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql = "SELECT * FROM kisiler";
            rs = st.executeQuery(sql);
            while (rs.next()) {
                if (mail.equals(rs.getString("eposta")) && sifre.equals(rs.getString("sifre"))) {
                    entry_permit = true;
                    System.out.println("BAŞARILI");
                    break;
                } else {
                    entry_permit = false;
                }
            }
        } catch (Exception e) {
            System.out.println(" HATA2 : " + e);
        }
    }
    public ResultSet verigetir(String eposta) {
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql = "SELECT * FROM kisiler WHERE eposta='" + eposta + "'";
            rs = st.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : ");
        }
        return rs;
    }

    public ResultSet verigetirr(String eposta) {
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql = "SELECT * FROM yonetici WHERE eposta='" + eposta + "'";
            rs = st.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : ");
        }
        return rs;
    }
    public void yonetici_guncelle(kullanici user2) {
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql = "UPDATE yonetici set ad='" + user2.getYon_ad() + "', soyad='" + user2.getYon_soyad()
                    + "', eposta='" + user2.getEposta_yon() + "', sifre='" + user2.getPassword_yon() + "' WHERE ID='1'";
            st.executeUpdate(sql);
        } catch (Exception e) {
            System.out.println(" HATA2 : " + e);
        }
    }
    public void kullanici_guncelle(kullanici user2, String eposta) {
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql = "UPDATE kisiler set ad='" + user2.getYon_ad() + "', soyad='" + user2.getYon_soyad()
                    + "', numara='" + user2.getYon_numara() + "', plaka='" + user2.getYon_plaka()
                    + "', eposta='" + user2.getEposta_yon() + "', sifre='" + user2.getPassword_yon() + "' WHERE eposta='" + eposta + "'";
            st.executeUpdate(sql);
        } catch (Exception e) {
            System.out.println(" HATA2 : " + e);
        }

    }
    public void yonetici_vericek(String mail, String sifre) {
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql = "SELECT * FROM yonetici";
            rs = st.executeQuery(sql);
            while (rs.next()) {
                if (mail.equals(rs.getString("eposta")) && sifre.equals(rs.getString("sifre"))) {
                    entry_permit = true;

                    break;
                } else {
                    entry_permit = false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA2 : ");
        }
    }
    public ResultSet kullaniciGetir() {
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql = "SELECT * FROM kisiler";
            rs = st.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : ");
        }
        return rs;
    }
    public void kullanicisil(int id) {
        Connection conn = null;
        PreparedStatement sorgu = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            sorgu = conn.prepareStatement("DELETE   FROM kisiler WHERE ID='" + id + "'");
            sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
