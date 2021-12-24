package utill01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class memberSevlet
 */
@WebServlet("/memberSevlet")
public class memberSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public memberSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String id = request.getParameter("userid");
		String psw1 = request.getParameter("psw1");
		String psw2 = request.getParameter("psw2");
		String mobile = request.getParameter("mobile");
		
		String inter[] = request.getParameterValues("interest");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>asdasd</title></head>");
		out.println("<body>");
		
		out.println("실명 : ");
		out.println(name + "<br>");
		
		out.println("성별 : ");
		out.println(gender + "<br>");
		
		out.println("아이디 : ");
		out.println(id + "<br>");
		
		out.println("비밀번호 : ");
		out.println(psw1 + "<br>");
		
		out.println("비밀번호확인 : ");
		out.println(psw2 + "<br>");
		
		out.println("모바일번호 : ");
		out.println(mobile + "<br>");
		
		out.println("관심분야 : ");
		for(int i = 0; i < inter.length; i++) {
			if(i == inter.length-1)
				out.println(inter[i] + "<br>");
			else
				out.println(inter[i] + ", ");
		}
		
		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
