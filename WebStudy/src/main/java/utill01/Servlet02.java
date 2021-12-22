package utill01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet02
 */
@WebServlet("/Servlet02")
public class Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet02() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		String oper = request.getParameter("oper");
		
		int result = 0;
		
		if(oper.equals("+"))
			result = val1 + val2;
        else if(oper.equals("-"))
        	result = val1 - val2;
        else if(oper.equals("*"))
        	result = val1 * val2;
        else if(oper.equals("/"))
        	result = val1 / val2;
        
		String str = "<html><head><title>입력</title></head><body>" + 
				"value1 : " + val1 + 
				"<br>value2 : " + val2 + 
				"<br>operator : " + oper + 
				"<br>result : " + result + 
		        "</body></html>";
				
		PrintWriter out = response.getWriter();
		out.println(str);
	}

}
