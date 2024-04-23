
package Mypackages;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mr.Kshan
 */
public class ProductDov {
    private String jdbcurl ="jdbc:mysql://localhost:3306/product?useSSL=false";
    private String username="root";
    private String pwd="";
    
    private static final String INSERT_LAPTOPS_SQL="INSERT INTO laptops(name,price,image,description) VALUES(?,?,?,?)";
    private static final String INSERT_PHONES_SQL="INSERT INTO phones(name,price,image,description) VALUES(?,?,?,?)";
    private static final String SELECT_ALL_PHONES="select * from phones";
    private static final String SELECT_ALL_LAPTOPS="select * from laptops";
    private static final String UPDATE_PHONES_SQL="update phones set name=?,price=?,image=?,description=?,whare id=?";
    private static final String UPDATE_LAPTOPS_SQL="update laptops set name=?,price=?,image=?,description=?,whare id=?";
    private static final String SELECT_PHONE_BY_ID="select * from phones where id=?;";
    private static final String SELECT_LAPTOP_BY_ID="select * from laptops where id=?;";
    private static final String DELETE_PHONE_SQL ="delete * from_phones wahere id=?";
    private static final String DELETE_LAPTOP_SQL="delete * from where id=?";
    
    protected Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(jdbcurl,username,pwd);
        }
        catch(SQLException | ClassNotFoundException  e){
            e.printStackTrace();
        }
             
        return con;
        
    }
    public List<Products> selectAllPhones() throws SQLException{
        List<Products> showphones= new ArrayList<>();
        Products products=null;
        
        try{
            Connection con=getConnection();
            PreparedStatement pst=con.prepareStatement(SELECT_ALL_PHONES);
            ResultSet rs =pst.executeQuery();
            
            while(rs.next()){
                int id   =  rs.getInt("id");
                String name=rs.getString("name");
                String price=rs.getString("price");
                String des=rs.getString("des");
                
               showphones.add(new Products(name,price,des));
        
            }
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
        return showphones;
    }
    public List<Products> selectAllLaptops() throws SQLException{
        List<Products> showlaptops= new ArrayList<>();
        Products products=null;
        
        try{
            Connection con=getConnection();
            PreparedStatement pst=con.prepareStatement(SELECT_ALL_LAPTOPS);
            ResultSet rs =pst.executeQuery();
            
            while(rs.next()){
                int id   =  rs.getInt("id");
                String name=rs.getString("name");
                String price=rs.getString("price");
                String des=rs.getString("des");
                
               showlaptops.add(new Products(name,price,des));
        
            }
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
        return showlaptops;
    }
    
}
