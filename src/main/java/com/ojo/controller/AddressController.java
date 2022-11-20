package com.ojo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ojo.service.AddressService;
import com.ojo.vo.AddressVO;

@WebServlet("/AddressController")
public class AddressController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddressController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
						
//		ArrayList<AddressVO> guList = AddressService.getInstance().selectGu();
//		ArrayList<AddressVO> dongList = AddressService.getInstance().selectDong(gu);
//		if (gu != null ) {
//			
//		}
		//System.out.println(dongList);
		String gu = request.getParameter("gu");
		System.out.println(gu);
		response.getWriter().write(getJSON(gu));
		
//		request.setAttribute("dong", dongList);
//		request.setAttribute("guList",guList);
//		RequestDispatcher dispatcher = request.getRequestDispatcher("productUpload.jsp");
//		dispatcher.forward(request, response);
	
		
	}
	


	private String getJSON(String gu) {
		if (gu == null) {
			gu = "";
		}
		ArrayList<AddressVO> dongList = AddressService.getInstance().selectDong(gu);
		System.out.println(dongList);
		StringBuffer result = new StringBuffer();
		result.append("{\"res\": [");
		for(AddressVO vo : dongList) {
			result.append("[{\"dong\" : \"" + vo.getDong().trim() + "\"}],");
		}
		result.append("]}");
		//System.out.println(result);
		return result.toString();
		
	}
	
}
