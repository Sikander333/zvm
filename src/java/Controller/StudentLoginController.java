
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


public class StudentLoginController extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("page").toString().equals("StudentLogin")){
                MethodOperation mo = new MethodOperation();
          HttpSession session = request.getSession();

                if(mo.StudentLoginValidation(request.getParameter("aadharid").toString(), request.getParameter("pwd").toString())){
                   
    session.setAttribute("userStatus", "1");
    session.setAttribute("username",mo.getUserNameOfStudent(request.getParameter("aadharid")));
    session.setAttribute("aadharidFromController" , request.getParameter("aadharid"));
    session.setAttribute("passwordFromStudentLoginController" , request.getParameter("pwd"));
    response.sendRedirect("studentHome.jsp?value=0");

}else{
    System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&    "+mo.IRLoginValidation(request.getParameter("aadharid").toString(), request.getParameter("pwd").toString()));
    request.getSession().setAttribute("userStatus", "-1");
    response.sendRedirect("StudentLogin.jsp?value=2");
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
            Logger.getLogger(StudentLoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(StudentLoginController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(StudentLoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(StudentLoginController.class.getName()).log(Level.SEVERE, null, ex);
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
