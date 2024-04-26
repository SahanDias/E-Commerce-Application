
package Mypackages;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mr.Kshan
 */
@WebServlet("/productservlet")
public class productservlet extends HttpServlet {

   private ProductDov productdov ;
   
   public productservlet(){
       this.productdov=new ProductDov();
   }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action=request.getRequestURI();
        String [] urlpattern  =action.split("/");
        String url="";
        
        if(urlpattern.length>3){
                url=urlpattern[3];
                
            }
        else{
            url="default";
        }
        System.out.println(url);
        
        switch(url){
            case "new":{
                System.out.println("new case");
                break;
                }
            default:{
                
            }    
    }
   
      
}
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this.doGet(request, response);
    }
        
        private void showhomepage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
            try{
               List<Products> allphones =productdov.selectAllPhones();
               RequestDispatcher dis =request.getRequestDispatcher("/produt.jsp");
               request.setAttribute("allphones", allphones);
               dis.forward(request, response);
            }
            catch(IOException | ServletException e){
                e.printStackTrace();
            }
        }
        
    

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
