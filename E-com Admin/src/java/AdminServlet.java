import java.io.IOException;
import java.io.PrintWriter;
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
                break;
                
            case "insertc":
                System.out.println("customer Insert");
                break;
            
            case "editc":
                System.out.println("customer Edit");
                break;
                
            case "updatec":
                System.out.println("customer update");
                break;
                
            case "deletec":
                System.out.println("customer delete");
                break;
                
            default:
                System.out.println("customer default");
        }
        
    }
    
    public void doPost (HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException{
        
        this.doGet(req, res);
    }
    
    
}
