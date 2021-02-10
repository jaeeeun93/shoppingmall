package MemberController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;
import Model.MemberBean;

@WebServlet("/member/idCheck.do")
public class IdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IdCheck() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAll(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAll(request,response);
	}
	
	protected void doAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id2 = request.getParameter("id_value");//id_value에 id2(아이디입력값)을 받았으니 불러와서 id2변수에 담는다.

		int cnt = 0;//db 아이디 세는것
		
		MemberBean bean = new MemberBean();//bean불러오고
		MemberDAO dao = new MemberDAO();//db연결
		
		cnt = dao.idCheck(id2);//dao에 있는 idCheck에 id2를 불러와서 cnt에 담는다.
		
		/*
		 * System.out.println("cnt : " + cnt); System.out.println("id2 : " + id2);
		 */
				
		if(cnt == 1 ) {//countrk 같은 아이디가 있는지 확인하는 거라서 1개라도 같으면 1나옴 같은아이디 값이있으면 1이니까 
			request.setAttribute("msg", "중복 아이디입니다."); //msg라는 변수에 넣을 말을 넣고
			request.setAttribute("idOk", "n");//사용불가능이므로 n 값 넘긴다.
			
			RequestDispatcher dis = request.getRequestDispatcher("/check.jsp");//error2에 에 있는 걸 여기서 실행할수 있게 포워드
			dis.forward(request, response);
		}
		
		if(id2 == "") {
			request.setAttribute("msg", "아이디를 입력하세요.");
			
			RequestDispatcher dis = request.getRequestDispatcher("/error2.jsp");
			dis.forward(request, response);
		}
		
		else {
			request.setAttribute("msg", "사용가능한 아이디 입니다.");
			request.setAttribute("idOk", "y");//사용가능이므로 y 값 넘긴다.
			
			RequestDispatcher dis = request.getRequestDispatcher("/check.jsp");
			dis.forward(request, response);
		}
	}
}
