package Controller;



import Bean.CASignupBean;

import DAO.MethodOperation;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
//import java.sql.Blob;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class CASignupController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
           if(request.getParameter("page").toString().equals("CASignup")){
        try (PrintWriter out = response.getWriter()) {
           // We can not use request.getParameter(); and MultipartRequest as well
          //  MultipartRequest mr = new MultipartRequest(request, "G://FileUpload//multipart");
          //    String P_des = request.getParameter("P_des");
      
             MethodOperation mo = new MethodOperation();
        
          String full_str="";
           
            String formElements[] = new String[20];
            String str = "";
            File file;
            int maxSize = 25000*100*2;
            int maxFactSize = 25000*100*2;
            String path = "C://Users//hp//Documents//NetBeansProjects//ZilaVikasManch//web//image_ddp";
            String type = request.getContentType();

            if (type.indexOf("multipart/form-data") >= 0) {
                

                DiskFileItemFactory disFact = new DiskFileItemFactory();
                disFact.setSizeThreshold(maxFactSize);
                disFact.setRepository(new File("C:\\temp"));
                ServletFileUpload upload = new ServletFileUpload(disFact);
                upload.setSizeMax(maxSize);
                
           
                
                
                List lis = null;
                 
                try {
                    lis = upload.parseRequest(request);
                   System.out.println("##########################################@@@@@@@@@@@@@@@@@###################    "+lis);
                } catch (FileUploadException ex) {
                    Logger.getLogger(CASignupController.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                
                Iterator itr = lis.iterator();
                   int i=0;
                while (itr.hasNext()) {
                    
                    
                    
                    FileItem item = (FileItem) itr.next();

                    if (item.isFormField()) {
                       
                         formElements[i]= item.getString();
                System.out.println("##########################################@@@@@@@@@@@@@@@@@###################    "+formElements[0]);       
                           i++;      
                
                         
                    }else{
                       
                        str = item.getName();
                        
                        
                   //     str = str.substring(0, 1) + "" + str.substring(str.indexOf("."));

                        file = new File(path, str);
                        try {
                            item.write(file);
                        } catch (Exception ex) {
                            Logger.getLogger(CASignupController.class.getName()).log(Level.SEVERE, null, ex);
                        }
                      //  System.out.print("uploaded...");
                       
                        full_str=full_str+str;
                        if(full_str!=""){
                            full_str=full_str+" ";
                        }
                        
                    }
                   
                   
                }
                                                                                                  
                 System.out.println("#############################@@@@@@@@@@@@@@@@@###########%%%%%%%%%%%%%%%   "+full_str);
                

            }
                             
           //     System.out.println("##########################################  DONE  ###################    "+formElements[0]);
            try {
                if(mo.userExist(formElements[1])){
                    response.sendRedirect("CASignup.jsp?value=3");
                    
                }else{
                    
                    
                    
                    CASignupBean casub = new CASignupBean(formElements[1] ,formElements[2], formElements[3], formElements[4],formElements[5],formElements[6],formElements[7],formElements[8], formElements[9],full_str);
                    
                    
                    int b = mo.addCA(casub);
                    if (b > 0) {
                        
                        
                        
                        response.sendRedirect("CALogin.jsp?value=1");
                        // out.print("Inserted Successfully ........");
                    } else {
                        out.print("There is something wrong........");
                    }
                }   } catch (ClassNotFoundException ex) {
                Logger.getLogger(CASignupController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(CASignupController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        }
    
    
}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

