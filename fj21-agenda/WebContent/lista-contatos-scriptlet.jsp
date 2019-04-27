<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page
	import="java.util.*,br.com.caelum.agenda.dao.*,br.com.caelum.agenda.modelo.*,
				java.text.SimpleDateFormat" %>



<!DOCTYPE html>
<html>


<body>

	<table>
		<td> Nome</td>
		<td> E-mail</td>
		<td> Endereço</td>
		<td> Data de Nascimento</td>
		
		<%
                      ContatoDao dao = new ContatoDao();
                      List<Contato> contatos = dao.getLista();

                      for (Contato contato : contatos ) {
                      %>
		<tr> 
		




		
		
		
			<td>   <%=contato.getNome() %></td>
			<td><%=contato.getEmail() %></td>
			<td><%=contato.getEndereco() %></td>
			<td><%=new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime())%></td>
			
			
			
		</tr>
		<%
}
%>
	</table>












</body>
</html>