
package Controller;

import DAO.MethodOperation;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class IRLoginController extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("page").toString().equals("IRLogin")){
                MethodOperation mo = new MethodOperation();
          HttpSession session = request.getSession();

                if(mo.IRLoginValidation(request.getParameter("aadharid").toString(), request.getParameter("pwd").toString())){
           
                    
        
                    
    session.setAttribute("userStatus", "1");
    session.setAttribute("username",mo.getUserName(request.getParameter("aadharid")));
    session.setAttribute("aadharidFromIRLoginController",request.getParameter("aadharid").toString());
    session.setAttribute("passwordFromIRLoginController",request.getParameter("pwd").toString());
    response.sendRedirect("IRHome.jsp");
     
    
    
    

}else{
    System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&    "+mo.IRLoginValidation(request.getParameter("aadharid").toString(), request.getParameter("pwd").toString()));
    request.getSession().setAttribute("userStatus", "-1");
    response.sendRedirect("IRLogin.jsp?value=2");
}

}
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(IRLoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(IRLoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(IRLoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(IRLoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
