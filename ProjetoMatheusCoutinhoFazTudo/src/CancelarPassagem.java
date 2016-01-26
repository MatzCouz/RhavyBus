import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CancelarPassagem {
	
	private String numero;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String passagem = request.getParameter("numero");
		response.sendRedirect("CancelarPassagem.jsp");
	}
	
	public void setNumero(String passagem){
		this.numero = passagem;
	}
	
	public String getNumero(){
		return numero;
	}
		
	
}