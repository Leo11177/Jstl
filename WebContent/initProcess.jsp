<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="maVariable" value="12" />
	<c:set scope="session" var="tonBean" value="${monBean}" />
	<c:set target="${tonBean}" property="prenom" value="Wile"/>

	<c:out value="${monBean.prenom}" />

	<%-- L'url ainsi générée --%>
	<c:url value="test.jsp" />




	<p>
		<b>Vous avez renseigné les informations suivantes :</b> <br>
		<c:out value="NOM : ${param.nom }" />
		<br>
		<c:out value="PRENOM : ${param.prenom }" />
	</p>

	<p>
		<b>Vous avez visité les pays suivants :</b> <br>
		<c:forEach items="${paramValues.pays}" var="unpays">
			<div>
				<c:out value="${unpays}" />
			</div>
		</c:forEach>
	</p>

	SUOTE


	<c:forEach var="parametre" items="${ paramValues }">
		<ul>
			<%-- Affiche la clé de la Map paramValues,
            qui correspond concrètement au nom du paramètre. --%>
			<li><b><c:out value="${ parametre.key }" /></b> :</li>

			<%-- Parcourt le tableau de String[] associé à la clé traitée, 
            qui correspond à la liste de ses valeurs. --%>
			<c:forEach var="value" items="${ parametre.value }">
				<%-- Affiche chacune des valeurs pour la clé donnée --%>
				<c:out value="${ value }" />
			</c:forEach>
		</ul>
	</c:forEach>







</body>
</html>