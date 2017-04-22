package bean;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DonateServlet
 */

public class SellOrDonateServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.getRequestDispatcher("donate.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		//System.out.println(session.getAttribute("user"));
		// User user=(User) session.getAttribute("user");
		String name=request.getParameter("product_name");
		String category=request.getParameter("category");
		String sellordonate=request.getParameter("sellordonate");
		String price=request.getParameter("price");
		String image=request.getParameter("imgURL");
		String charity=request.getParameter("charity");
		String celebrity=request.getParameter("celebrity");
		ProductBean bean = new ProductBean();
	       bean.setProduct_name(name);
	       bean.setCategory(category);
	       bean.setSellordonate(sellordonate);
	       bean.setImage(image);
	       bean.setPrice(price);
	       bean.setCharity(charity);
	       bean.setCelebrity(celebrity);
		 System.out.println(bean.toString());
		   int status=ProductDAO.addProduct(bean);
		   
		   request.setAttribute("Result", "Uploaded Successfully");
		   request.getRequestDispatcher("celebrityhomepage.jsp").forward(request, response);
	} 

}
