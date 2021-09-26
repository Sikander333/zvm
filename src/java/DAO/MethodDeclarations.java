/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Bean.CASignupBean;
import Bean.CATableBean;
import Bean.IRProblemsBean;
import Bean.IRSignupBean;
import Bean.IRTableBean;
import Bean.ProblemsUpByCABean;
import Bean.StudentProblemsBean;
import Bean.StudentSignupBean;
import Bean.StudentSolutionsBean;
import Bean.StudentTableBean;
import Bean.Winner1SolutionsBean;
import Bean.Winner2SolutionsBean;
import Bean.Winner3SolutionsBean;
import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author Lenovo
 */
public interface MethodDeclarations {
    
     public int addCA(CASignupBean casub);                                                      // done
     public int addIR(IRSignupBean irsub);                                                     // done
   public int addStudent(StudentSignupBean stsub);                                             // done
  
   public String getUserName(String aadharid);                                                 // done
   public String getUserNameOfStudent(String aadharid);                                        //  done
   public ResultSet newIRRequest();                                                            //  IRAadharid done
   public ResultSet newStudentRequest(String IRAadharid);                                      // IRAadharid done
   public void updateIRStatus(String aadharid , String status);                                // IRAadharid done
   public void updateStudentStatus(String aadharid , String status,String IRAadharid);         // IRAadharid done
   
   
   public int insertIntoCAProblem(ProblemsUpByCABean pubcab);                                   //done
   public int insertIntoIRProblems(ProblemsUpByCABean pubcab ,String IRAadharid);                      //  IRAadharid done
    public int insertIntoStudentProblems(IRProblemsBean irpb ,String aadharid , String IRAadharid);    //IRAadharid done
    public int insertIntoStudentSolutions(StudentSolutionsBean stsb ,String aadharid ,String IRAadharid);          //done
   
    public List selectAllCAProblems();                                                         //done
    public List selectAllIRProblems(String IRAadharid);                                       //   IRAadharid done
 /*   public List  selectMax3IRProblems(int[] arr);            */
    public ProblemsUpByCABean  selectCAProblems(int id);                                              //done
    public IRProblemsBean selectIRProblems(int id ,String IRAadharid);                                //     IRAadharid done
     public List selectIRProblemsWithStatus3AsAsAadharid(String aadharid ,String IRAadharid);           //    IRAadharid done 
     public StudentProblemsBean selectStudentProblems(String aadharid ,String IRAadharid);                //   IRAadharid done
     public StudentProblemsBean selectStudentProblems(int id ,String IRAadharid);              //     IRAadharid done
     public StudentSolutionsBean selectStudentSolution(int id ,String IRAadharid);             //      IRAadharid done  
     public StudentSolutionsBean selectStudentSolution(String aadharid , String IRAadharid);       //    IRAadharid done
                                           
     
     
     
     public List selectAllStudentProblems(String IRAadharid);                                            //done
     public List selectAllStudentProblemsWithUsername(String IRAadharid);                             //   IRAadharid done
     public List selectAllStudentSolutionsWithUsername(String IRAadharid);                            //   IRAadharid done
    public List selectUnSolvedCAProblems(String IRAadharid);                                                           // done
    public List selectUnSolvedIRProblems(String IRAadharid);                                         //    IRAadharid done
    public int updateCAProblem(ProblemsUpByCABean pubcab);                                              //done
    public int updateStudentSolutionWithIRStatusAsUpdated(StudentSolutionsBean stsb ,String IRAadharid); //  IRAadharid done
    
    public int updateCAProblemsStatusInfinity(int id , String Aadharid);                               //  IRAadharid done
    public int updateCAProblemsStatusAsSolved(int id);                                                 // done
     public int updateIRProblemsStatus2(int id ,String IRAadharid);                                    //   IRAadharid done
     public int updateStudentProblemsStatus2ASRejected(int id , String IRAadharid);                    //   IRAadharid done
     public int updateStudentProblemsStatus2ASAccepted(int id ,String IRAadharid);                     //   IRAadharid done
     public int updateIRProblemsStatus2AsUnSelected(int id ,String IRAadharid);                        //   IRAadharid done
      public int updateIRProblemsStatus2and3AsUnSelected(int id ,String aadharid ,String IRAadharid);  //    IRAadharid done
     public int updateIRProblemsStatus2AsSelected(int id , String IRAadharid);                         //    IRAadharid done
 
     public int updateIRProblemsStatus3AsAadharid(int[] arr , String aadharid ,String IRAadharid);     //    IRAadharid done
     public int updateIRProblemsStatus1AsSolved(int id , String IRAadharid);                           //    IRAadharid done
     public int updateStudentSolutionsIRStatusASUpdateIt(int id ,String IRAadharid);                   //    IRAadharid done
     public int updateStudentSolutionsIRStatusAsAccepted(int id ,String IRAadharid);                   //    IRAadharid done
    public boolean deleteCAProblem(int id);                                                            //  done
    public boolean deleteStudentProblems(String aadharid ,String IRAadharid);                          //    IRAadharid done
     
     public List searchByName(String name);                                                            // done
     public int createIRProblems(String aadharid);                                                     //done
     public int createStudentProblems(String aadharid);                                                //done
     public int createStudentSolutions(String aadharid);                                               //done
     public int addColumnInCAProblems(String aadharid);                                                //done
     
     
      public ResultSet selectAllIRTableWhereStatusIsAccepted();                                         //done
      public String selectStudentTableReferenceId(String aadharid);                                  //     IRAadharid done
      public boolean checkForSuggestion(String StudentAadharid ,String IRAadharid);                  //     IRAadharid done
      public List selectIRTable();                                                                  // Might Not used 
      public List selectAllCAProblemsWithIRTable();
      public StudentSolutionsBean selectStudentSolutionWithUsername(int id,String IRAadharid);   
      
      public List selectAllCAProblemsWithIRTableAndStatusInCAProblemsAsSolved();
      
      
     
      public int insertIntoWinner1Solutions(int id,String aadharid , String IRAadharid);
      public int insertIntoWinner2Solutions(int id,String aadharid , String IRAadharid);
      public int insertIntoWinner3Solutions(int id,String aadharid , String IRAadharid);
      public Winner1SolutionsBean selectWinner1Solutions(int id);
      public Winner2SolutionsBean selectWinner2Solutions(int id);
      public Winner3SolutionsBean selectWinner3Solutions(int id);
      public List selectAllCAProblemsWithStatusInCAProblemsAsSolved();  //for ScoreBoardForStudents.jsp
      public List selectAllStudents();
      public List selectAllIR();
      public ResultSet selectCATable();
      public CATableBean selectCAInformation();
      public IRTableBean selectIRTable(String IRAadharid);
      public StudentTableBean selectStudentTable(String StudentAadharid);
      public void truncateWinner1Solutions();
      public void truncateWinner2Solutions();
      public void truncateWinner3Solutions();
      public void dropStudentSolutions(String IRAadharid);
      public void dropStudentProblems(String IRAadharid);
      public void dropIRProblems(String IRAadharid);
      public void dropIRAadharidStatusFromCAProblems(String IRAadharid);
      public void truncateCAProblems();
      public void truncateStudentTable();
      public void truncateIRTable();
      public void createWinner1Solutions();
      public void createWinner2Solutions();
      public void createWinner3Solutions();
      public void dropAllWinnersTables();
       public boolean checkForSelectedProblemInStudentProblems(String StudentAadharid ,String IRAadharid);
       public boolean checkForSelectedProblemInIRProblems(String StudentAadharid ,String IRAadharid);
       public boolean checkForEnableOrDisableOfAssignPoints(String StudentAadharid);
        public boolean checkForEnableOrDisableOf1PointRadioButton(int Pid);
        public boolean checkForEnableOrDisableOf2PointsRadioButton(int Pid);
        public boolean checkForEnableOrDisableOf3PointsRadioButton(int Pid);
        public ResultSet selectIRTableWhereIRAadharidIs200000000000();
        public void deleteFromStudentTableWhereReferenceIdIs200000000000();
        public void deleteFromIRTableWhereAadharidIs200000000000();
        public void deleteFromCAProblemsWhereP_idIs11();
        public void updateStatusOfCAProblemsAsUnSolved();
        public StudentSolutionsBean selectStudentSolutionOfWinners(int id ,String IRAadharid);
       
    
    
    
}
