/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.sun.faces.context.RequestParameterMap;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class contact1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String fname=req.getParameter("txt_fname");
        String lname=req.getParameter("txt_lname");
        String email=req.getParameter("txt_email");
        String number=req.getParameter("txt_number");
        String msg=req.getParameter("txt_msg");
        String submit=req.getParameter("btn");
        String no=req.getParameter("no");
        

        out.println(fname);
        out.println(lname);
        out.println(email);
        out.println(number);
        out.println(msg);
          
    Database db=new Database();
       String result=db.connectdb();
       out.println(result);
        
        if(submit.equals("Submit"))
       {
           
           String insert=db.Query("insert into contact_us(fname,email,lname,number,msg)values('"+fname+"','"+email+"','"+lname+"','"+number+"','"+msg+"')", "Record Inserted");
           out.println(insert);
                    resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Message send sucessfully');");
                    out.println("location='contact_us.jsp';");
                    out.println("</script>");
       }
        if(submit.equals("Delete"))
       {
       String delete=db.Query("delete from contact_us where no='"+no+"'", "Record Deleted");
       out.println(delete);
       resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Data deleted successfully');");
                    out.println("location='contact_us_lst.jsp';");
                    out.println("</script>");
       }
         if(submit.equals("Update"))
       {
           
           String update=db.Query("update contact_us set fname='"+fname+"',lname='"+lname+"',email='"+email+"',number='"+number+"',msg='"+msg+"' where no='"+no+"'", "Record Updated");
           out.println(update);
           resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Data updated successfully');");
                    out.println("location='contact_us_lst.jsp';");
                    out.println("</script>");
       
       }
       }

    }
    

   

