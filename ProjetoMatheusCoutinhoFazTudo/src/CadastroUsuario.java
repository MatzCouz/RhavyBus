import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CadastroUsuario {
	private String nome;
	private String senha;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		nome = request.getParameter("nome");
		senha = request.getParameter("senha");
		response.sendRedirect("cadastro.jsp");
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
}
