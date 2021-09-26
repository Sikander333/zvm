
package Controller;

import DAO.MethodDeclarations;
import DAO.MethodOperation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class acceptStudentSolutionsController extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        try (PrintWriter out = response.getWriter()) {
           
            int id= Integer.parseInt(request.getParameter("id"));
            String status = request.getParameter("status").toString();
            
            MethodDeclarations md = new MethodOperation();
            String IRAadharid = session.getAttribute("IRAadharidFromNewSolutions").toString();
            int b = md.updateStudentSolutionsIRStatusAsAccepted(id ,IRAadharid);
            int c =md.updateIRProblemsStatus1AsSolved(id ,IRAadharid);
            
            
            if(b>0 && c>0){
            
             if(status.equals("Not Accepted Yet")){   
                
            response.sendRedirect("newSolutions.jsp");
             }else if(status.equals("Updated")){
             
              response.sendRedirect("reviewedSolutions.jsp");
             
             }
            
            
            }else{
             out.println("IRStatus has not been updated as Accepted in StudentSolutions");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
