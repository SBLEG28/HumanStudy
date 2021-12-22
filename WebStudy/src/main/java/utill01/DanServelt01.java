package utill01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DanServelt01
 */
@WebServlet("/DanServelt01")
public class DanServelt01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DanServelt01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int a = Integer.parseInt(request.getParameter("a"));
		int b = Integer.parseInt(request.getParameter("b"));
		int c = Integer.parseInt(request.getParameter("c"));
		
		String str = "<html><head><title>asdasd</title></head><body>";
		str += "X1 = " + (-b + Math.sqrt(Math.pow(b, 2) - (4*a*c))) / (2*a) + "<br>";
		str += "X2 = " + (-b - Math.sqrt(Math.pow(b, 2) - (4*a*c))) / (2*a) + "<br>";
		str += "</body></html>";
				
		PrintWriter out = response.getWriter();
		out.println(str);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}