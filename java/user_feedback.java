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
public class user_feedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String email=req.getParameter("txt_email");
        String msg=req.getParameter("txt_msg");
        String submit=req.getParameter("btn");
        String no=req.getParameter("no");
        

        out.println(email);
        out.println(msg);
          
    Database db=new Database();
       String result=db.connectdb();
       out.println(result);
        
        if(submit.equals("Submit"))
       {
           
           String insert=db.Query("insert into user_feedback(email,msg)values('"+email+"','"+msg+"')", "Record Inserted");
           out.println(insert);
                    resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Feedback send sucessfully');");
                    out.println("location='user_feedback.jsp';");
                    out.println("</script>");
       }
        if(submit.equals("Delete"))
       {
       String delete=db.Query("delete from contact_us where no='"+no+"'", "Record Deleted");
       out.println(delete);
       resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Data deleted successfully');");
                    out.println("location='user_fedback_lst.jsp';");
                    out.println("</script>");
       }
         
       }

    }
    

   

