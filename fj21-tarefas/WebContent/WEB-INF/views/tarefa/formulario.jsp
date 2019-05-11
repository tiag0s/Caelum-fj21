
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adicionar tarefas</title>
</head>
<body>

	<h3>ADICIONAR TAREFAS</h3>

	<form action="adicionaTarefa" method="post">
		DESCRIÇÃO: <br />

		<textarea name="descricao" rows="5" cols="100"></textarea>
		<br /> <input type="submit" value="Adicionar">

		<form:errors path="tarefa.descricao" />
		<form action="adicionaTarefa" method="post"></form>
</body>
</html>