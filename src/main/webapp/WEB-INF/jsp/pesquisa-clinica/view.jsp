<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:master title="#AjudeUmaPesquisa">
	<section class="c-banner">
	    <div class="container">
	      <div class="c-banner__info">
	        <h2 class="c-banner__title">${pesquisaClinica.nome }</h2>
	        <p class="c-banner__description">${pesquisaClinica.descricao }</p>
	      </div>
	      <div class="banner__cover">
	      	<img src="<c:url value="/resources/images/banner/ajude-uma-pesquisa-info.png"/>" alt="#AjudeUmaPesquisa" class="banner__img">
	      </div>
	    </div>
	</section>
</tags:master>