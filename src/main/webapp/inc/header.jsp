<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>${titreOnglet}</title>	
	<c:url value="css/paper.css" var="cheminCss"/>
	<link rel="stylesheet" href="${cheminCss}" />
	<script type="text/javascript">function vuePanelConfirmAjoutIng(){alert("L'ajout de l'ingrédient dans la base de données a été effectué avec succès !!")}</script>
	<script type="text/javascript"> function removeRow(src){var Row = src.parentElement.parentElement;document.all("tableListeIngredient").deleteRow(Row.rowIndex);}</script>
</head>
<body>

<br />
<!-- INSERTION DU MENU -->
<div class="container">
	<jsp:include page="menu.jsp" />	
</div>



