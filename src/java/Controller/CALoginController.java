
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


public class CALoginController extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
       
          try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("page").toString().equals("CALogin")){
                MethodOperation mo = new MethodOperation();
          HttpSession session = request.getSession();

                if(mo.AdminLoginValidation(request.getParameter("aadharid").toString(), request.getParameter("pwd").toString())){
                   
    session.setAttribute("userStatus", "1");
    session.setAttribute("aadharidFromCALoginController",mo.getUserName(request.getParameter("aadharid")));
    session.setAttribute("passwordFromCALoginController",mo.getUserName(request.getParameter("pwd")));
    session.setAttribute("username",mo.getUserName(request.getParameter("aadharid")));
    
    response.sendRedirect("collectorHome.jsp");

}else{
    System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&    "+mo.IRLoginValidation(request.getParameter("aadharid").toString(), request.getParameter("pwd").toString()));
    request.getSession().setAttribute("userStatus", "-1");
    response.sendRedirect("CALogin.jsp?value=2");
}

}
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CALoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CALoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CALoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CALoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
