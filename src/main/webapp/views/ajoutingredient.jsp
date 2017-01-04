<!-- LES TAGLIBS -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>



<!-- LE HEADER + LES JAVASCRIPT -->
<jsp:include page="/inc/header.jsp"/>




<!-- LES URLS -->
<c:url value="/recapingredient.html" var="urlRecapIngredient"></c:url>




<!-- LE DEBUT DU BODY -->
<div class="container">
	 
	 <form action="${urlRecapIngredient}" method="POST" class="form-signin">
	    <h3 class="form-signin-heading">Ajouter un ingrédient</h3>
	      
	    <label for="inputName" class="sr-only">Nom</label>
	    <input name="inputName" type="text" id="inputName" class="form-control" placeholder="Nom de l'ingrédient" autofocus>
	      
	    <label for="inputState" class="sr-only">Etat</label>
	    <input name="inputState" type="text" min="1" max="3" id="inputState" class="form-control" placeholder="Etat de l'ingrédient">
		
		<br />
		
	    <button class="btn btn-sm btn-primary btn-block" type="submit">Valider</button>
	
	 </form>
	 
</div>
<!-- LA FIN DU BODY -->





<!-- LE FOOTER -->
<jsp:include page="/inc/footer.jsp"/>

