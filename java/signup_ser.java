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
public class signup_ser extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String fname=req.getParameter("txt_fname");
        String lname=req.getParameter("txt_lname");
        String email=req.getParameter("txt_email");
        String number=req.getParameter("txt_number");
        String address=req.getParameter("txt_address");
        String bod=req.getParameter("txt_bod");
        String gender=req.getParameter("txt_gender");
        String password=req.getParameter("txt_password");
        String re_password=req.getParameter("txt_repassword");
        String submit=req.getParameter("btn");
        String no=req.getParameter("no");
        
        
        

        out.println(fname);
        out.println(lname);
        out.println(email);
        out.println(number);
        out.println(address);
        out.println(bod);
        out.println(gender);
        out.println(password);
        out.println(re_password);
        
        
        Database db=new Database();
       String result=db.connectdb();
       out.println(result);
        
        if(submit.equals("Send now"))
       {
           
           String insert=db.Query("insert into sign_up(fname,lname,email,number,address,bod,gender,password,re_password)values('"+fname+"','"+lname+"','"+email+"','"+number+"','"+address+"','"+bod+"','"+gender+"','"+password+"','"+re_password+"')", "Record Inserted");
           out.println(insert);
           resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Account created successfully');");
                    out.println("location='user_login.jsp';");
                    out.println("</script>");
       
       }
         if(submit.equals("Delete"))
       {
       String delete=db.Query("delete from sign_up where no='"+no+"'", "Record Deleted");
       out.println(delete);
       resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Account deleted successfully');");
                    out.println("location='sign_up.jsp';");
                    out.println("</script>");
       }
         if(submit.equals("Update"))
       {
           
           String update=db.Query("update sign_up set fname='"+fname+"',lname='"+lname+"',email='"+email+"',number='"+number+"',address='"+address+"',bod='"+bod+"',gender='"+gender+"' where no='"+no+"'", "Record Updated");
           out.println(update);
           resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Account updated successfully');");
                    out.println("location='sign_up.jsp';");
                    out.println("</script>");
       
       }
        }
    }

    


