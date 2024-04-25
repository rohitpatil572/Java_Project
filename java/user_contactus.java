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
public class user_contactus extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String name=req.getParameter("txt_name");
        String email=req.getParameter("txt_email");
        String phone=req.getParameter("txt_phone");
        String subject=req.getParameter("txt_subject");
        String msg=req.getParameter("txt_msg");
        String submit=req.getParameter("btn");
        String no=req.getParameter("no");
        

        out.println(name);
        out.println(email);
        out.println(phone);
        out.println(subject);
        out.println(msg);
        
          
    Database db=new Database();
       String result=db.connectdb();
       out.println(result);
        
        if(submit.equals("submit"))
       {
           
           String insert=db.Query("insert into user_contactus(name,email,phone,subject,message)values('"+name+"','"+email+"','"+phone+"','"+subject+"','"+msg+"')", "Record Inserted");
           out.println(insert);
                    
       }
        
       }

    }
