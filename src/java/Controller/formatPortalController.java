
package Controller;

import DAO.MethodDeclarations;
import DAO.MethodOperation;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class formatPortalController extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            MethodDeclarations md = new MethodOperation();
           md.truncateWinner1Solutions();
           md.truncateWinner2Solutions();
           md.truncateWinner3Solutions();
           ResultSet rs = md.selectAllIRTableWhereStatusIsAccepted();
           if(rs!=null){
                            while(rs.next()){
                                System.out.println("Tables to be dropped ..............................  "+rs.getString(1));
                    md.dropStudentSolutions(rs.getString(1));
                    md.dropStudentProblems(rs.getString(1));
                    md.dropIRProblems(rs.getString(1));
                    md.dropIRAadharidStatusFromCAProblems(rs.getString(1));
                   
                }
           }else{
           out.println("%%%%%%%%%%%% %%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%    There is something wrong ");
           
           }
            
           
            md.truncateCAProblems();
            md.dropAllWinnersTables();
             md.truncateStudentTable();
             md.truncateIRTable();
            response.sendRedirect("Settings.jsp?value=1");
           
           
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
        } catch (SQLException ex) {
            Logger.getLogger(formatPortalController.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(formatPortalController.class.getName()).log(Level.SEVERE, null, ex);
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
