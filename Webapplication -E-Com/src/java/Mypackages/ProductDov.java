
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
    
    private static final String INSERT_products_SQL="INSERT INTO products(name,catagory,price,cart image,sub images,description) VALUES(?,?,?,?,?,?)";
    private static final String SELECT_ALL_CAMERAS = "SELECT * FROM products WHERE category = 'camera'";
    private static final String SELECT_ALL_LAPTOPS = "SELECT * FROM products WHERE category = 'Laptop'";
    private static final String SELECT_ALL_PHONES = "SELECT * FROM products WHERE category = 'phone'";
    private static final String UPDATE_PRODUCTS_SQL = "UPDATE products SET name=?,catagory=?, price=?, cart image=?,image,sub images=?, description=? WHERE id=?";
    private static final String SELECT_PRODUCT_BY_ID = "SELECT * FROM products WHERE id=?";
    private static final String DELETE_PRODUCT_SQL = "DELETE FROM products WHERE id=?";

  
    
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
    public void insertProducts(Products prd){
          
        try{
            Connection connection=getConnection();
            PreparedStatement pst=connection.prepareStatement(INSERT_products_SQL);
            pst.setString(1,prd.getName());
            pst.setString(2,prd.getCatagory());
            pst.setString(3,prd.getPrice());
            pst.setString(4,prd.getCartImage());
            pst.setString(5,prd.getSubimage());
            pst.executeUpdate();
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
    
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
                String catagory=rs.
                
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
