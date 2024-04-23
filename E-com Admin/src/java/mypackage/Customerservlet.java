/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet(name = "Customerservlet", urlPatterns = {"/Customerservlet"})
public class Customerservlet extends HttpServlet {
    
    private CustomerDAO customerDAO;
    
    public Customerservlet(){
        this.customerDAO = new CustomerDAO();
    }
    

    public void doGet (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {
        
            String action = req.getRequestURI();
            String[] uriparm = action.split("/");
            String curi="";
            if(uriparm.length >3){
                curi=uriparm[3];
            }else{
                curi="aaa";
            }
            
            switch(curi){
                
                case "insertc":
                    System.out.println("insert customer");
                    {
                        try {
                            insertcustomer(req, res);
                        } catch (SQLException ex) {
                            Logger.getLogger(Customerservlet.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                    break;
                    
                case "newc":
                    System.out.println("newform customer");
                    shownewform(req, res);
                    break;
                    
                case "deletec":
                    System.out.println("delete customer");
                    {
                        try {
                            deletecustomer(req, res);
                        } catch (SQLException ex) {
                            Logger.getLogger(Customerservlet.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                    break;
                    
                case "editc":
                    System.out.println("edit cusotmer");
                    {
                        try {
                            showeditcustomerform(req, res);
                        } catch (SQLException ex) {
                            Logger.getLogger(Customerservlet.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                    break;
                    
                case "updatec":
                    System.out.println("update customer");
                    {
                        try {
                            updatecustomer(req, res);
                        } catch (SQLException ex) {
                            Logger.getLogger(Customerservlet.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                    break;
                    
                default:
                    System.out.println("default casec");
                    {
                        try {
                            listallcustomers(req, res);
                        } catch (SQLException ex) {
                            Logger.getLogger(Customerservlet.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                    
            }


    }
    
    public void doPost (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {
        
        this.doGet(req, res);
    }
    
    private void shownewform (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {
        //add customer form file path here...
        RequestDispatcher rd= req.getRequestDispatcher("/customerform.jsp");
        rd.forward(req, res);
    }
    
    private void insertcustomer (HttpServletRequest req, HttpServletResponse res)
            throws IOException , SecurityException, SQLException {
        
        try {
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String address = req.getParameter("address");
            String mobile = req.getParameter("mobile");
            Customer newcustomer = new Customer(name,email,address,mobile);
            customerDAO.insertCustomer(newcustomer);
            //add customer table file path
            res.sendRedirect("customer table");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
    private void deletecustomer (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException, SQLException {
        
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            customerDAO.deleteCustomer(id);
            //add customer table file path
            res.sendRedirect("customer table");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private void showeditcustomerform (HttpServletRequest req, HttpServletResponse res)
            throws IOException,SQLException ,ServletException {
        
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            Customer existcustomer = customerDAO.selectCustomer(id);
            //add  customer update jsp page path
            RequestDispatcher rd = req.getRequestDispatcher("/update.jsp");
            //<c: jstl value
            req.setAttribute("customer", existcustomer);
            rd.forward(req, res);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private void updatecustomer (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException, SQLException {
        
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String address = req.getParameter("address");
            String mobile = req.getParameter("mobile");
            Customer updatecust = new Customer(name,email,address,mobile);
            customerDAO.updateCustomer(updatecust);
            //add customer table jsp file path
            res.sendRedirect("/table.jsp");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private void listallcustomers (HttpServletRequest req, HttpServletResponse res)
            throws IOException, SQLException, ServletException {
        
        try {
            List<Customer> listcustomer = customerDAO.selectallCustomers();
            //add customer table file path
            RequestDispatcher rd = req.getRequestDispatcher("/customer table.jsp");
            //<c: jstl value
            req.setAttribute("customer",listcustomer);
            rd.forward(req, res);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

     
}
