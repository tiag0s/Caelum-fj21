

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<body>

	<c:import url="cabecalho.jsp" />

	

	<table border="1">
		<td>ID</td>
		<td>Nome</td>
		<td>E-mail</td>
		<td>Endereço</td>
		<td>Data de Nascimento</td>

		
		<c:forEach var="contato" items="${contatos}"   varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'FFFFFF' }">

		
				<td>${contato.id}</td>
				<td>${contato.nome}</td>

				<td><c:if test="${not empty contato.email}">

						<a href="malito:${contato.email}">${contato.email}</a>
					</c:if> <c:if test="${empty contato.email}">
					e-mail não informado
					</c:if></td>

				<td>${contato.endereco}</td>

				<td> <fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" /> </td>

				<td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a> 	</td>
			

			</tr>

		</c:forEach>

	</table>


	<c:import url="rodape.jsp" />
</body>
</html>