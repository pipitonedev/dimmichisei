package it.prova.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.prova.model.Persona;

@WebServlet("/CheckPresenzaServlet")
public class CheckPresenzaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CheckPresenzaServlet() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Persona personaLogin = new Persona("vincenzo", "pipitone");

		Persona personaRichiesta = new Persona(request.getParameter("nomeInput"), request.getParameter("cognomeInput"));

		if (personaLogin.getNome().equalsIgnoreCase(personaRichiesta.getNome())
				&& personaLogin.getCognome().equalsIgnoreCase(personaRichiesta.getCognome())) {
			request.setAttribute("personaAttribute", personaRichiesta);

			RequestDispatcher rd = request.getRequestDispatcher("riconosciuto.jsp");
			rd.forward(request, response);

		} else {
			request.setAttribute("personaAttribute", personaRichiesta);
			RequestDispatcher rd = request.getRequestDispatcher("sconosciuto.jsp");
			rd.forward(request, response);
		}

	}

}
