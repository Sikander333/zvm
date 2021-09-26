
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


public class cleanProjectController extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            MethodDeclarations md = new MethodOperation();
           md.dropAllWinnersTables();
           md.updateStatusOfCAProblemsAsUnSolved();
           ResultSet rs = md.selectIRTableWhereIRAadharidIs200000000000();
           if(rs!=null){
                            while(rs.next()){
                                
                    md.dropStudentSolutions(rs.getString(1));
                    md.dropStudentProblems(rs.getString(1));
                    md.dropIRProblems(rs.getString(1));
                    md.dropIRAadharidStatusFromCAProblems(rs.getString(1));
                   
                }
           }else{
           out.println("%%%%%%%%%%%% %%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%    There is something wrong ");
           
           }
            
           
            
             md.deleteFromCAProblemsWhereP_idIs11();
             md.deleteFromStudentTableWhereReferenceIdIs200000000000();
             md.deleteFromIRTableWhereAadharidIs200000000000();
            response.sendRedirect("CleaningProject.jsp?value=1");
            
            
            
            
            
            
            
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
            Logger.getLogger(cleanProjectController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(cleanProjectController.class.getName()).log(Level.SEVERE, null, ex);
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
