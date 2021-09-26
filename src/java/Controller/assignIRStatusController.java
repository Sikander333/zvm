
package Controller;

import Bean.IRTableBean;
import DAO.MethodDeclarations;
import DAO.MethodOperation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class assignIRStatusController extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           MethodDeclarations md = new MethodOperation();
            
            if(request.getParameter("page").toString().equals("assignIRStatus")){
             String IRAadharid =request.getParameter("aadharid");
        String status =request.getParameter("status");
        
         
    md.updateIRStatus(IRAadharid, status);
    IRTableBean irtb = md.selectIRTable(IRAadharid);
    
           if(irtb.getStatus().equals("Accepted")){
               
                       int a = md.createIRProblems(IRAadharid);
                 
                       int b = md.createStudentProblems(IRAadharid);
                        
                       int c = md.createStudentSolutions(IRAadharid);
                        
                       int d = md.addColumnInCAProblems(IRAadharid);
                       
                       response.sendRedirect("newIRRequest.jsp");
           }else if(irtb.getStatus().equals("Rejected")){
           
                       response.sendRedirect("newIRRequest.jsp");
           
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
