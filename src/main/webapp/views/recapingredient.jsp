<!-- LES TAGLIBS -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>



<!-- LE HEADER -->
<jsp:include page="/inc/header.jsp"/>

	

<!-- LES URLS -->
<c:url value="/listeingredient.html" var="urlListeIngredient"/>
<c:url value="/ajoutingredient.html" var="urlAjoutIngredient"/>




<!-- LE DEBUT DU BODY -->
<div class="container">

	<!--affichage panel des erreurs de saisie par l'utilisateur-->
	<c:if test="${(not empty messageErreur)}">
		<div class="panel panel-danger">
		  <div class="panel-heading">
		    <h3 class="panel-title"><s:message code="erreur.saisie"/></h3>
		  </div>
		  <div class="panel-body">
		  
		    <ul>
			<c:forEach items="${messageErreur}" var="messageErreur">
				<li>${messageErreur}</li>
			</c:forEach>
			</ul>
			
			<a style="margin-right: auto;" href="${urlAjoutIngredient}" class="btn btn-danger btn-xs">retour au formulaire</a>
		  </div>
		</div>
	
	</c:if>	

	
	<br />
	
	<h4>Récapitulatif des données saisies</h4>
	
		<!--affichage d'un tableau récapitulatif-->
		<form action="${urlListeIngredient}" method="post">
			<table class="table table-striped table-hover ">
			  <thead>
			    <tr>
			      <th><s:message code="colonne.id"/></th>
			      <th><s:message code="colonne.ingredient"/></th>
			      <th><s:message code="colonne.etat"/></th>
			      <th><s:message code="colonne.action"/></th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>non défini</td>
			      <td><input type="text" name="nomTab" value='<c:out value="${nom}"></c:out>' readonly="readonly"/></td>
			      <td><input type="text" name="etatTab" value='<c:out value="${etat}"></c:out>' readonly="readonly"/></td>			      
			      <td><c:if test="${(empty messageErreur)}"><button type="submit" class="btn btn-primary btn-xs" onclick="vuePanelConfirmAjoutIng()">valider</button> <a href="${urlAjoutIngredient}" class="btn btn-warning btn-xs">retour</a></c:if></td>
			    </tr>
			</table>
		</form>
</div>
<!-- LA FIN DU BODY -->




<!-- LE FOOTER -->
<jsp:include page="/inc/footer.jsp"></jsp:include>