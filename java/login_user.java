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
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class login_user extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
         PrintWriter out=resp.getWriter();
        String email=req.getParameter("txt_use");
        String password=req.getParameter("txt_pswd");
        
        String event=req.getParameter("btn");
        HttpSession session=req.getSession();
        
        
        Connection cn=null;
        Statement st=null;
        
        
        if(event.equals("login_user"))
        {
        } else {            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","root");
                st=cn.createStatement();
                String sql="select * from sign_up where email='"+email+"' and password='"+password+"'";
                ResultSet rs=st.executeQuery(sql);
                if(rs.next())
                {
                    session.setAttribute("email", email);
                    resp.sendRedirect("index.html");
                    
                }
                else
                {
                    resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Login Fail');");
                    out.println("location='user_login.jsp';");
                    out.println("</script>");
                }
                
                
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
        
       
      
    }

   

}
