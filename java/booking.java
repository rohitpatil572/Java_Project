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
public class booking extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String fname=req.getParameter("txt_fname");
        String lname=req.getParameter("txt_lname");
        String email=req.getParameter("txt_email");
        String number=req.getParameter("txt_number");
        String address=req.getParameter("txt_address");
        String date=req.getParameter("txt_date");
        String provider=req.getParameter("txt_provider");
        String price=req.getParameter("txt_price");
        String category=req.getParameter("txt_category");
         String pemail=req.getParameter("txt_pemail");
        String submit=req.getParameter("btn");
        String no=req.getParameter("no");
        
        
        

        out.println(fname);
        out.println(lname);
        out.println(email);
        out.println(number);
        out.println(address);
        out.println(date);
        out.println(provider);
        out.println(price);
        out.println(category);
        out.println(pemail);
        
        Database db=new Database();
       String result=db.connectdb();
       out.println(result);
        
        if(submit.equals("Book"))
       {
           
           String insert=db.Query("insert into booking(fname,lname,email,number,address,date,provider,price,category,pemail)values('"+fname+"','"+lname+"','"+email+"','"+number+"','"+address+"','"+date+"','"+provider+"','"+price+"','"+category+"','"+pemail+"')", "Record Inserted");
           out.println(insert);
           resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Data inserted successfully');");
                    out.println("location='card_pay.jsp ';");
                    out.println("</script>");
       
       }
         if(submit.equals("Delete"))
       {
       String delete=db.Query("delete from booking where no='"+no+"'", "Record Deleted");
       out.println(delete);
       resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' data deleted successfully');");
                    out.println("location='user_booking_lst.jsp';");
                    out.println("</script>");
       }
         
        }
    }

    


