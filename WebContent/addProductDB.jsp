<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.*" %>
<%@ page import = "java.sql.*" %>
<% Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","SSDI","SSDI_29");
System.out.println("Connected");
String PRODUCT_NAME = request.getParameter("ProductName");
String CATEGORY = request.getParameter("Category");
String SELLORDONATE = request.getParameter("SellOrDonate");
String PRICE = request.getParameter("Price");
String CHARITY = request.getParameter("Charity");
String IMAGE = "Badminton";
System.out.println(IMAGE);

String sql="";

sql = "insert into products values(" + CATEGORY + "','" + SELLORDONATE + "','" + PRICE + "','" + CHARITY + "','" + PRODUCT_NAME + "','"+ IMAGE +"')";

try
{
 Statement stmt = con.createStatement();
 System.out.println(sql);
 stmt.executeUpdate(sql);
 
}
catch(SQLException e)
{
   out.print("SQL Error encountered " + e.getMessage());
}
con.close();
con=null;
%>