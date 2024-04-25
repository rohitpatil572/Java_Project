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
public class card_pay extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
     PrintWriter out=resp.getWriter();
        
        String holder_name=req.getParameter("txt_name");
        String crd_no=req.getParameter("txt_crd_no");
        String cvv=req.getParameter("txt_cvv");
        String exp_date=req.getParameter("txt_exp_date");
        String amount=req.getParameter("txt_amount");
        String submit=req.getParameter("btn");
         String no=req.getParameter("no");
        
        

        out.println(holder_name);
        out.println(crd_no);
        out.println(cvv);
        out.println(exp_date);
        out.println(amount);
        
        
        
        Database db=new Database();
       String result=db.connectdb();
       out.println(result);
        
        if(submit.equals("Pay"))
       {
           
           String insert=db.Query("insert into card_pay(holder_name,crd_no,cvv,exp_date,amount)values('"+holder_name+"','"+crd_no+"','"+cvv+"','"+exp_date+"','"+amount+"')", "Record Inserted");
           out.println(insert);
                    resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Service Booked');");
                    out.println("location='services.html';");
                    out.println("</script>");
       }
        if(submit.equals("Delete"))
       {
       String delete=db.Query("delete from card_pay where no='"+no+"'", "Record Deleted");
       out.println(delete);
       resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Data deleted successfully');");
                    out.println("location='card_pay_lst.jsp';");
                    out.println("</script>");
       }
         if(submit.equals("Update"))
       {
           
           String update=db.Query("update card_pay set holder_name='"+holder_name+"',crd_no='"+crd_no+"',cvv='"+cvv+"',exp_date='"+exp_date+"',amount='"+amount+"' where no='"+no+"'", "Record Updated");
           out.println(update);
           resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert(' Data updated successfully');");
                    out.println("location='card_pay_lst.jsp';");
                    out.println("</script>");
       
       }
    }
    

}
