package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Feedback;
import model.Product;
import model.Reservation;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author FPT University - PRJ30X
 */
public class DBContext {

    protected Connection connection;

    public DBContext() {
        try {
            String user = "sa";
            String pass = "1";
            String url = "jdbc:sqlserver://localhost\\SQLEXPRESS:1433;databaseName=Tasty";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Product> getListProducts() {
        try {
            ArrayList<Product> ListProducts = new ArrayList<Product>();
            String sql = "SELECT * FROM Product";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String images = rs.getString(3);
                double price = rs.getDouble(4);
                String title = rs.getString(5);
                String description = rs.getString(6);

                Product p = new Product(id, name, images, price, title, description);

                ListProducts.add(p);

            }
            return ListProducts;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }

    public ArrayList<Product> getListProductsByID(int pid) {
        try {
            ArrayList<Product> ListProductsByID = new ArrayList<Product>();
            String sql = "SELECT * FROM Product p\n"
                    + "WHERE p.id = " + pid;
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String images = rs.getString(3);
                double price = rs.getDouble(4);
                String title = rs.getString(5);
                String description = rs.getString(6);

                Product p = new Product(id, name, images, price, title, description);

                ListProductsByID.add(p);

            }
            return ListProductsByID;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }

    public void addProduct(String name, String image, double price, String title, String description) throws SQLException {
        String sql = "INSERT INTO Product(name, image, price, title, description) VALUES (?,?,?,?,?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, name);
        statement.setString(2, image);
        statement.setDouble(3, price);
        statement.setString(4, title);
        statement.setString(5, description);

        statement.executeUpdate();
    }

    public void updateProduct(String name, String image, double price, String title, String description, String pid) throws SQLException {
        String sql = "UPDATE Product\n"
                + "SET name = ?, image = ?, price = ?, title = ?, description = ?\n"
                + "WHERE id = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, name);
        statement.setString(2, image);
        statement.setDouble(3, price);
        statement.setString(4, title);
        statement.setString(5, description);
        statement.setString(6, pid);

        statement.executeUpdate();
    }

    public void deleteProduct(String pid) {
        try {
            String sql = "DELETE FROM Product\n"
                    + "WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, pid);

            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Reservation> getListUpcomingReservationsByID(int user_id) {
        try {
            ArrayList<Reservation> ListUpcomingReservationsByID = new ArrayList<Reservation>();
            String sql = "SELECT * FROM Reservation r\n"
                    + "WHERE r.date >= CAST(GETDATE() AS nvarchar) AND r.uid = " + user_id;
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                int numberofpeople = rs.getInt(3);
                String date = rs.getString(4);
                int uid = rs.getInt(5);

                Reservation r = new Reservation(id, name, numberofpeople, date, uid);

                ListUpcomingReservationsByID.add(r);

            }
            return ListUpcomingReservationsByID;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }

    public ArrayList<Reservation> getListReservationByID(int rid) {
        try {
            ArrayList<Reservation> ListReservationByID = new ArrayList<Reservation>();
            String sql = "SELECT * FROM Reservation r\n"
                    + "WHERE r.id = " + rid;
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                int numberofpeople = rs.getInt(3);
                String date = rs.getString(4);
                int uid = rs.getInt(5);

                Reservation r = new Reservation(id, name, numberofpeople, date, uid);

                ListReservationByID.add(r);

            }
            return ListReservationByID;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }

    public void addReservation(String name, int numberofpeople, String date, int uid) throws SQLException {
        String sql = "INSERT INTO Reservation(name, numberofpeople, date, uid) VALUES (?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, name);
        statement.setInt(2, numberofpeople);
        statement.setString(3, date);
        statement.setInt(4, uid);

        statement.executeUpdate();

    }

    public void updateReservation(String name, String numberofpeople, String date, String rid) throws SQLException {
        String sql = "UPDATE Reservation\n"
                + "SET name = ?, numberofpeople = ?, date = ?\n"
                + "WHERE id = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, name);
        statement.setString(2, numberofpeople);
        statement.setString(3, date);
        statement.setString(4, rid);

        statement.executeUpdate();
    }

    public void deleteReservation(String rid) {
        try {
            String sql = "DELETE FROM Reservation\n"
                    + "WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, rid);

            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Account> getListAccountsByID(int id) {
        try {
            ArrayList<Account> ListAccountsByID = new ArrayList<Account>();
            String sql = "SELECT * FROM Account a\n"
                    + "WHERE a.uid = " + id;
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int uid = rs.getInt(1);
                String email = rs.getString(2);
                String password = rs.getString(3);
                String name = rs.getString(4);
                String phonenumber = rs.getString(5);
                int isUser = rs.getInt(6);
                int isAdmin = rs.getInt(7);

                Account a = new Account(uid, email, password, name, phonenumber, isUser, isAdmin);

                ListAccountsByID.add(a);

            }
            return ListAccountsByID;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }

    public void addAccount(String email, String password, String name, String phone) throws SQLException {
        String sql = "INSERT INTO Account(email, password, name, phonenumber, isUser, isAdmin) VALUES (?,?,?,?,1,0)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);
        statement.setString(3, name);
        statement.setString(4, phone);

        statement.executeUpdate();

    }

    public void updateAccount(String email, String password, String name, String phone, String aid) throws SQLException {
        String sql = "UPDATE Account\n"
                + "SET email = ?, password = ?, name = ?, phonenumber = ?\n"
                + "WHERE uid = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);
        statement.setString(3, name);
        statement.setString(4, phone);
        statement.setString(5, aid);

        statement.executeUpdate();
    }

    public void deleteAccount(String aid) {
        try {
            String sql = "DELETE FROM Account\n"
                    + "WHERE uid = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, aid);

            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Account login(String email, String password) {
        try {
            String sql = "SELECT * FROM Account a\n"
                    + "WHERE a.email = ? and a.password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public Account checkAccountExist(String email) {
        try {
            String sql = "SELECT * FROM Account a\n"
                    + "WHERE a.email = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public ArrayList<Feedback> getListFeedback() {
        try {
            ArrayList<Feedback> ListFeedback = new ArrayList<Feedback>();
            String sql = "SELECT * FROM Feedback f\n"
                    + "WHERE MONTH(f.date) = MONTH(GETDATE()) AND YEAR(f.date) = YEAR(GETDATE())";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String feedback = rs.getString(3);
                int star = rs.getInt(4);
                String date = rs.getString(5);
                int uid = rs.getInt(6);

                Feedback f = new Feedback(id, name, feedback, star, date, uid);

                ListFeedback.add(f);

            }
            return ListFeedback;
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }

    public void addFeedback(String name, String feedback, String star, int uid) throws SQLException {
        String sql = "INSERT INTO Feedback(name, feedback, star, date, uid) VALUES (?, ?, ?, GETDATE(), ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, name);
        statement.setString(2, feedback);
        statement.setString(3, star);
        statement.setInt(4, uid);

        statement.executeUpdate();

    }

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        DBContext db = new DBContext();
        System.out.println(db.getListFeedback());

    }
}
