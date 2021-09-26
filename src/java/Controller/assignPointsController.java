
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


public class assignPointsController extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            
            
            
            //     out.print("value coming from studentHome is "+request.getParameter("radio_btn"));  
            if(request.getParameter("radio")!=null){
        String points=(request.getParameter("radio")).toString();
        
         HttpSession session = request.getSession();
            
            int ProblemId = (int)session.getAttribute("PidFromAssignPoints");
            
       //     System.out.println("^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^   "+aadharid);
        
        
      MethodDeclarations md = new MethodOperation();
      String IRAadharid = session.getAttribute("IRAadharidFromAssignPoints").toString();
      String StudentAadharid = session.getAttribute("StudentAadharidFromAssignPoints").toString();
      
      int u=0 , v=0 , w=0 ,x=0;
           if(points.equals("1")){
                     md.createWinner1Solutions();
                     u=md.insertIntoWinner1Solutions(ProblemId, StudentAadharid, IRAadharid);
           }else if(points.equals("2")){
                     md.createWinner2Solutions();
                    v=md.insertIntoWinner2Solutions(ProblemId, StudentAadharid, IRAadharid);
           }else if(points.equals("3")){
                    md.createWinner3Solutions();
                    w=md.insertIntoWinner3Solutions(ProblemId, StudentAadharid, IRAadharid);
           }
            
               x = md.updateCAProblemsStatusAsSolved(ProblemId);
            if (u >0 || v >0 ||w >0 ) {
                
                
               
                 response.sendRedirect("CASolutions.jsp");
              
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
