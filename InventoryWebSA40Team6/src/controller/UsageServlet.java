package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CustomerDTO;
import model.ProductDTO;
import model.VehicleDTO;
import daos.CustomerDAO;
import daos.DAOFactory;
import daos.ProductDAO;
import daos.VehicleDAO;

/**
 * Servlet implementation class UsageServlet
 */
@WebServlet("/Mechanic/UsageServlet")
public class UsageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int partNo = Integer.parseInt(request.getParameter("partNo"));
		ProductDAO pdao = DAOFactory.getProductDAO();
		ProductDTO product = pdao.getOneProduct(partNo);
		request.setAttribute("product", product);
		
		CustomerDAO cdao=DAOFactory.getCustomerDAO();
		ArrayList<CustomerDTO> customers=cdao.getAllCustomers();
		ArrayList<String> clist=new ArrayList<String>();
		for (CustomerDTO customerDTO : customers) {
				clist.add(customerDTO.getCustomerName());	
		}
		
		VehicleDAO vdao=DAOFactory.getVehicleDAO();
		ArrayList<VehicleDTO> vehicles=vdao.getAllVehicles();
		ArrayList<String> vlist=new ArrayList<String>();
		for (VehicleDTO vehicleDTO : vehicles) {
			vlist.add(vehicleDTO.getVehicleId());
			
		}
		
		
		request.setAttribute("customer", clist);	
		request.setAttribute("vehicles", vlist);
		
		RequestDispatcher rd = request.getRequestDispatcher("/pages/mechanic/PreUsageDetail.jsp");
		rd.forward(request, response);
	}
}
