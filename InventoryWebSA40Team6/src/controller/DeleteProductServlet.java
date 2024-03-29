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
import model.ProductStockDTO;
import daos.DAOFactory;
import daos.ProductDAO;
import daos.ProductStockDAO;

/**
 * Servlet implementation class DeleteProductServlet
 */
@WebServlet("/Admin/delproduct")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);	
		
	}

	private void process(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ProductDAO p = DAOFactory.getProductDAO();
		int pno = Integer.parseInt(request.getParameter("partNo"));
		ProductDTO product = p.getOneProduct(pno);
		if(p.deleteProduct(product)){
			request.setAttribute("success", "true");
		}
		else{
			request.setAttribute("success", "false");
		}
		ProductStockDAO ps = DAOFactory.getProductStockDAO();
		ArrayList<ProductStockDTO> pslist = ps.getAllProductList();
		request.setAttribute("productlist", pslist);
		p = DAOFactory.getProductDAO();
		ArrayList<String> category = p.getCategoryList();
		request.setAttribute("catlist", category);
		RequestDispatcher rd = request.getRequestDispatcher("/pages/admin/inventorystock.jsp");
		rd.forward(request, response);
	}

}
