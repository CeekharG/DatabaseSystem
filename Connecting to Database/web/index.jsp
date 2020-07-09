<%-- 
    Document   : index
    Created on : Nov 2, 2019, 08:44:42 AM
    Author     : shikh
--%>

<%@page import = "java.sql.*" %>
<%@page import = "java.io.*" %>
<% Class.forName("oracle.jdbc.driver.OracleDriver");%>

 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

        <head>

            <meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8”>

            <title> Webpage Connection </title>

        </head>

        <body>

            <h1> Pratap Simkhada & Shikhar Giri </h1>

            <h2> Seat# E12, E13 </h2>

            <h3> Sales To Date Report </h3>
         
            
            <%
                String url = "jdbc:oracle:thin:@129.7.240.3:1521:orcl";
                

                Connection conn = DriverManager.getConnection(url,"SGIRI","SGIRI#");

                Statement statement = conn.createStatement();

                ResultSet resultset= statement.executeQuery("select * from SALESTODATE");
            %>
           
            
            <TABLE BORDER =”1” BGCOLOR =”55D33C” width =”70%” cellspacing =”1.5” cellpadding =”1” bordercolor=”blue” border=”1”>
            
                <tr>
                    <TH bgcolor=’#F0FB00’><FONT SIZE=’4’/>Product ID</TH>
                    <TH bgcolor=’#F0FB00’><FONT SIZE=’4’/>Product Description</TH>
                    <TH bgcolor=’#F0FB00’><FONT SIZE=’4’/>No. Times Product Ordered</TH>
                </tr>
            
                <% while (resultset.next()) {%>
                
                <tr>
                    
                    <TD> <font size=’3’/><center><%= resultset.getString(1)%></center></TD>
                    <TD> <font size=’3’/><center><%= resultset.getString(2)%></center></TD>
                    <TD> <font size=’3’/><center><%= resultset.getString(3)%></center></TD>
                </tr>
                
                <%}%>
            </TABLE>
        </body>
    </html>

                
  