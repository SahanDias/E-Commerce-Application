
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
public class AdminDAO {
    
    //db connection
    private String jdbcurl = "jdbc:mysql://localhost:3306/eleczone?useSSL=false";
    private String username = "root";
    private String password = "";
    
    private static final String INSERT_ADMIN_SQL = "insert into admins"+"(name,email,mobile) values"+"(?,?,?);";
    private static final String SELECT_ALL_ADMIN = "select * from admins";
    private static final String DELETE_ADMIN_SQL = "delete from admins where id=?;";
    private static final String UPDATE_ADMIN_SQL = "update admins set name = ?, email = ?, mobile = ? where id=?;";
    private static final String SELECT_ADMIN_BY_ID = "select * from admins where id=?;";
    
    protected Connection getConnection(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcurl,username,password);
            System.out.println("db connected");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return connection;
    }
    
    public void insertAdmin (Admin admin){
        try {
            Connection connection=getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ADMIN_SQL);
            preparedStatement.setString(1, admin.getName());
            preparedStatement.setString(2, admin.getEmail());
            preparedStatement.setString(3, admin.getMobile());
            preparedStatement.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public boolean deleteAdmin (int id){
        boolean rowdelete= false;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_ADMIN_SQL);
            preparedStatement.setInt(1, id);
            rowdelete=preparedStatement.executeUpdate() > 0;
                    
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rowdelete;
    }
    
    public List<Admin> selectallAdmins(){
        List<Admin> admins= new ArrayList<>();
        Admin admin = null;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ADMIN);
            ResultSet rs = preparedStatement.executeQuery();
            
                while(rs.next()){
                    int id=rs.getInt("id");
                    String name= rs.getString("name");
                    String email= rs.getString("email");
                    String mobile = rs.getString("mobile");
                    admins.add(new Admin(id,name,email,mobile));
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admins;
    }
    
    public Admin selectAdmin (int id){
        Admin admin= null;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ADMIN_BY_ID );
            ResultSet rs= preparedStatement.executeQuery();
            
                while(rs.next()){
                   String name = rs.getString("name");
                   String email = rs.getString("email");
                   String mobile = rs.getString("mobile");
                   admin = new Admin(id,name,email,mobile);
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }
    
    public boolean updateAdmin (Admin admin){
        boolean rowupdated= false;
        try {
            Connection connection= getConnection();
            PreparedStatement preparedStatement= connection.prepareStatement(UPDATE_ADMIN_SQL);
            preparedStatement.setString(1, admin.getName());
            preparedStatement.setString(2, admin.getEmail());
            preparedStatement.setString(3, admin.getMobile());
            preparedStatement.setInt(4, admin.getId());
            rowupdated = preparedStatement.executeUpdate() > 0 ;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rowupdated;
    }
}
