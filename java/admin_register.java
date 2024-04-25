/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class admin_register extends HttpServlet {

    
   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String fname=req.getParameter("txt_fname");
        String lname=req.getParameter("txt_lname");
        String number=req.getParameter("txt_number");
        String email=req.getParameter("txt_email");
        String password=req.getParameter("txt_password");
        String re_password=req.getParameter("txt_repassword");
        String submit=req.getParameter("btn");
        String no=req.getParameter("no");

        out.println(fname);
        out.println(lname);
        out.println(number);
        out.println(email);
        out.println(password);
        out.println(re_password);
        
    
        Database db=new Database();
       String result=db.connectdb();
       out.println(result);
        
        if(submit.equals("Submit"))
       {
           
           String insert=db.Query("insert into admin_register(fname,lname,number,email,password,re_password)values('"+fname+"','"+lname+"','"+number+"','"+email+"','"+password+"','"+re_password+"')", "Record Inserted");
           out.println(insert);
            
       }
        
    }
}
