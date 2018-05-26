<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:master title="#AjudeUmaPesquisa - Lista de Pesquisas Clínicas">
          <section class="pg-register l-form">
              <div class="container">
                <div class="l-form__info-user">
                  <div class="l-form__nav-setings">
					<%@include file="/WEB-INF/jsp/shared/nav-settings.jsp" %>
                  </div>
                  <div class="l-form__box-register">
                    <div class="l-form__header">
                      <h2>Lista de Pesquisas clínicas</h2>
                    </div>
                   	<ul>
                   		<c:forEach items="${pesquisaClinica }" var="p">
                   			<li>${p.nome }
                   				<c:url value="/pesquisa-clinica/editar/${p.id }" var="link"/>
								<a href="${link}" class="btn">Editar</a>
                   			</li>
                   		</c:forEach>
                   	</ul>
                  </div>
                </div>
              </div>
          </section>
</tags:master>