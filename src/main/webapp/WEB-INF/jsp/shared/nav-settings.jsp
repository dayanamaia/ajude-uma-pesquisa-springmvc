<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="c-nav-settings">
	<a href="<c:url value="/pesquisa-clinica/lista"/>" title="Lista de pesquisas clínicas cadastradas" class="c-nav-settings__link">Lista de pesquisas clínicas cadastradas
		<svg>
			<use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#note"/>" />
		</svg>
	</a>
	<a href="<c:url value="/pesquisa-clinica/cadastrar"/>" title="Cadastrar uma Pesquisa Clínica" class="c-nav-settings__link">Cadastrar uma Pesquisa Clínica
		<svg>
			<use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#plus"/>" />
		</svg>
	</a>
</div>