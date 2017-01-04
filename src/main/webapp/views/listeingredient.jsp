<!-- LES TAGLIBS -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>



<!-- LE HEADER -->
<jsp:include page="/inc/header.jsp"></jsp:include>



<!-- LES URLS -->
<c:url value="/listeingredient.html" var="urlListeIngredient"/>




<!-- DEBUT DU BODY -->
<div class="container">
	<br />
	
	<h4>Liste des ingrédients</h4>
	
	<table  id="tableListeIngredient" class="table table-striped table-hover ">
	  <thead>
	    <tr>
	      <th><s:message code="colonne.id"/></th>
	      <th><s:message code="colonne.ingredient"/></th>
	      <th><s:message code="colonne.etat"/></th>
	      <th><s:message code="colonne.action"/></th>
	    </tr>
	  </thead>
	   <tbody>
		<c:forEach items="${liste}" var="listeIngredient">
		<tr>
	      <td><c:out value="${listeIngredient.id}"/></td>
	      <td><c:out value="${listeIngredient.nom}"/></td>
	      <td><c:out value="${listeIngredient.etat}"/></td>
	      <td><c:url value="${urlListeIngredient}" var="url">
              	<c:param name="id" value="${listeIngredient.id}"/>
              </c:url>
              <a href="${urlListeIngredient}" class="btn btn-danger btn-primary btn-xs" onclick="removeRow(this)">supprimer</a> 
              <a class="btn btn-success btn-primary btn-xs" href="#">modifier</a>
          </td>
		</tr>
		</c:forEach>	
	   </tbody>
	</table> 
	
	<ul class="pagination">
	  <li class="disabled"><a href="#">&laquo;</a></li>
	  <li class="active"><a href="#">1</a></li>
	  <li><a href="#">2</a></li>
	  <li><a href="#">3</a></li>
	  <li><a href="#">4</a></li>
	  <li><a href="#">5</a></li>
	  <li><a href="#">&raquo;</a></li>
	</ul>
</div>
<!-- FIN DU BODY -->





<!-- LE FOOTER -->
<jsp:include page="/inc/footer.jsp"></jsp:include>