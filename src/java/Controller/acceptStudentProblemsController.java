
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


public class acceptStudentProblemsController extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
               HttpSession session = request.getSession();
               String IRAadharid = session.getAttribute("IRAadharidFromProblemsSelectedByStudentFT").toString();
        try (PrintWriter out = response.getWriter()) {
           
            MethodDeclarations md = new MethodOperation();
            int u = md.updateStudentProblemsStatus2ASAccepted(Integer.parseInt(request.getParameter("id")) , IRAadharid);
            if(u==0){
            
            System.out.println("StudentProblems status2 is not updated as Accepted");
            }
           
            int v = md.updateIRProblemsStatus2AsSelected(Integer.parseInt(request.getParameter("id")) ,IRAadharid);
            if(v==0){
            
            System.out.println("IRProblems status2 is not updated as Selected");
            }
            int w = md.updateIRProblemsStatus2and3AsUnSelected(Integer.parseInt(request.getParameter("id")),request.getParameter("aadharid").toString() ,IRAadharid);
            
            if(w==0){
            System.out.println("IRProblems status2 and status3 are not updated ");
            
            }
            response.sendRedirect("ProblemsSelectedByStudentFT.jsp");
            
            
            
            
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
