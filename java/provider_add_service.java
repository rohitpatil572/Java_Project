/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Admin
 */
public class provider_add_service extends HttpServlet {

    private Object rs;

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String provider_name=req.getParameter("txt_provider_name");
        String details=req.getParameter("txt_details");
        String contact=req.getParameter("txt_contact");
        String contact2=req.getParameter("txt_contact2");
        String price=req.getParameter("txt_price");
        String email=req.getParameter("txt_email");
        String category=req.getParameter("txt_category");
        String area=req.getParameter("txt_area");
        String address=req.getParameter("txt_address");
        String image=req.getParameter("txt_image");
        String submit=req.getParameter("btn");
        String no=req.getParameter("no");
        
        Connection cn=null;
        Statement st=null;
        
        out.println(provider_name);
        out.println(details);
        out.println(contact);
        out.println(contact2);
        out.println(price);
        out.println(email);
        out.println(category);
        out.println(area);
        out.println(address);
        out.println(image);
        
        
        
        
         Database db=new Database();
       String result=db.connectdb();
       out.println(result);
        
        if(submit.equals("Add"))
            
       {
     
            String insert=db.Query("insert into provider_add_service(provider_name,details,contact,contact2,price,email,category,area,address,image)values('"+provider_name+"','"+details+"','"+contact+"','"+contact2+"','"+price+"','"+email+"','"+category+"','"+area+"','"+address+"','"+image+"')", "Record Inserted");
            out.println(insert);
             resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Product inserted successfully');");
                    out.println("location='provider_add_service.jsp';");
                    out.println("</script>");
       }if(submit.equals("Delete"))
       {
       String delete=db.Query("delete from provider_add_service where no='"+no+"'", "Record Deleted");
       out.println(delete);
       resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Record Deleted');");
                    out.println("location='provider_add_service_lst.jsp';");
                    out.println("</script>");
       }
         if(submit.equals("Update"))
       {
           
           String update=db.Query("update provider_add_service set provider_name='"+provider_name+"',contact='"+contact+"',contact='"+contact2+"',email='"+email+"',address='"+address+"',category='"+category+"',details='"+details+"',price='"+price+"',area='"+area+"',image='"+image+"' where no='"+no+"'", "Record Updated");
           out.println(update);
           resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Record Updated');");
                    out.println("location='provider_add_service_lst.jsp';");
                    out.println("</script>");
       
       }
    }

}
