
package Controller;

import Bean.IRProblemsBean;
import Bean.StudentProblemsBean;
import DAO.MethodDeclarations;
import DAO.MethodOperation;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.ListIterator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SelectedByStudentST extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            
            
            
                  
            
         
            
         
            if(request.getParameter("radio")!=null){
        int id=Integer.parseInt(request.getParameter("radio"));
        
         HttpSession session = request.getSession();
            
            String aadharid = session.getAttribute("aadharidFromStudentHome").toString();
            
       //     System.out.println("^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^   "+aadharid);
        
        
      MethodDeclarations md = new MethodOperation();
      String IRAadharid = session.getAttribute("IRAadharidFromSelectOneOutOfThree").toString();
    IRProblemsBean irpb =md.selectIRProblems(id ,IRAadharid );
    
  
    StudentProblemsBean stpb = md.selectStudentProblems(aadharid ,IRAadharid);
    
    
    
    
    
    
    
                             boolean c = md.deleteStudentProblems(aadharid ,IRAadharid);
                             
                             int i = md.updateIRProblemsStatus2AsUnSelected(stpb.getP_id() ,IRAadharid);
                          
    
                             
    
    
     int b = md.insertIntoStudentProblems(irpb ,aadharid ,IRAadharid);
            int u = md.updateIRProblemsStatus2(id ,IRAadharid);
            
            if (b > 0 && u>0 && c==true && i>0) {
                
                
               
                 response.sendRedirect("studentHome.jsp?value=1");
              
            } else {
                out.print("There is something wrong........");
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
