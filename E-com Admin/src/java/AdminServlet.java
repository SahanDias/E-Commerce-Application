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
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
    
    private AdminDAO adminDAO;
    
    public AdminServlet(){
        this.adminDAO= new AdminDAO();
    }

    public void doGet (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException{
        
        String action = req.getRequestURI();
        String[] uriparm = action.split("/");
        String uri="";
        if(uriparm.length >3){
            uri=uriparm[3];
        }else{
            uri="aaa";
        }
        
        switch(uri){
            
            case "newc":
                System.out.println("customer new");
                shownewform(req, res);
                break;
                
            case "insertc":
                System.out.println("customer Insert");
                {
                    try {
                        insertAdmin(req, res);
                    } catch (SQLException ex) {
                        Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                break;
            
            case "editc":
                System.out.println("customer Edit");
                {
                    try {
                        showeditform(req, res);
                    } catch (SecurityException ex) {
                        Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (SQLException ex) {
                        Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                break;
                
            case "updatec":
                System.out.println("customer update");
                {
                    try {
                        updateAdmin(req, res);
                    } catch (SQLException ex) {
                        Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                break;
                
            case "deletec":
                System.out.println("customer delete");
                {
                    try {
                        deleteadmin(req, res);
                    } catch (SQLException ex) {
                        Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                break;
                
            default:
                System.out.println("customer default");
                {
                    try {
                        listalladmin(req, res);
                    } catch (SQLException ex) {
                        Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
        }
        
    }
    
    public void doPost (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException{
        
        this.doGet(req, res);
    }
    
    private void shownewform (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {
        
        RequestDispatcher rd = req.getRequestDispatcher("/jsp");
        rd.forward(req, res);
    }
    
    private void insertAdmin (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException, SQLException {
        
        try {
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String mobile = req.getParameter("mobile");
            Admin newadmin = new Admin(name,email,mobile);
            adminDAO.insertAdmin(newadmin);
            res.sendRedirect("list");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private void listalladmin (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException, SQLException {
        
        try {
            List<Admin> listadmin = adminDAO.selectallAdmins();
            RequestDispatcher rs= req.getRequestDispatcher("/list.jsp");
            req.setAttribute("admins", listadmin);
            rs.forward(req, res);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private void deleteadmin (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException , SQLException {
        
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            adminDAO.deleteAdmin(id);
            res.sendRedirect("list");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private void showeditform (HttpServletRequest req, HttpServletResponse res)
            throws IOException,SecurityException,SQLException {
        
        try {
            int id= Integer.parseInt(req.getParameter("id"));
            Admin exitadmin = adminDAO.selectAdmin(id);
            RequestDispatcher rd = req.getRequestDispatcher("/update.jsp");
            req.setAttribute("admin", exitadmin);
            rd.forward(req, res);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private void updateAdmin (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException, SQLException {
        
        try {
            int id =Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String mobile = req.getParameter("mobile");
            Admin updateadmin = new Admin (name,email,mobile);
            adminDAO.updateAdmin(updateadmin);
            res.sendRedirect("list");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
