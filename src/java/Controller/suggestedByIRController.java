
package Controller;

import Bean.IRProblemsBean;
import DAO.MethodDeclarations;
import DAO.MethodOperation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class suggestedByIRController extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
          HttpSession session = request.getSession();
            
           String aadharid = session.getAttribute("AadharidFromSuggestIRProblems").toString();
            String IRAadharid = session.getAttribute("IRAadharidFromSuggestIRProblems").toString(); 
           
            if(request.getParameterValues("checkbox")!=null){
         String names[]=request.getParameterValues("checkbox");
         int size= names.length;
         int arr[]= new int[size];
         for(int i=0;i<size;i++){
         
         arr[i]=Integer.parseInt(names[i]);
         }
         
        
      MethodDeclarations md = new MethodOperation();
                
   
            int u = md.updateIRProblemsStatus3AsAadharid(arr, aadharid ,IRAadharid);
            
            
            if (u>0) {
                
                
                
                 response.sendRedirect("ProblemsSelectedByStudentFT.jsp");
              
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
