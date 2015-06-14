package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDTO;
import daos.DAOFactory;
import daos.ProductDAO;

/**
 * Servlet implementation class LoadUsageServlet
 */
@WebServlet("/Mechanic/LoadUsageServlet")
public class LoadUsageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadUsageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductDAO dao = DAOFactory.getProductDAO();
		ArrayList<ProductDTO> products = dao.getAllProducts();
		request.setAttribute("products", products);		
		RequestDispatcher rd = request.getRequestDispatcher("/pages/mechanic/EnterUsage.jsp");
		rd.forward(request, response);
	}

}
