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
                   			<li>
                   				<c:url value="/pesquisa-clinica/editar/${p.id }" var="link"/>
                   				<a href="<c:url value="/pesquisa-clinica/${p.id }"/>">${p.nome }</a>
                   				<div>
                   					<a href="${link}" class="btn">Editar</a>
                   					<a href="${link}" class="btn">Excluir</a>
                   				</div>
                   			</li>
                   		</c:forEach>
                   	</ul>
                  </div>
                </div>
                <div class="bg-overlay"></div>
				<div class="modal-delete" role="dialog" aria-labelledby="ModalLabel">
					<div class="close">x</div>
					<h4 class="title-modal" id="ModalLabel">Tem certeza?</h4>
					<p class="description-modal">Após excluir esse item, essa ação não poderá ser desfeita!</p>
				
					<div class="btn-modal">
				     	<c:url value="/pesquisa-clinica/excluir" var="action"/>
				      	<form action="${action }" method="post">
				      		<input type="hidden" name="id" id="idExcluir">
					       <button type="button" class="btn cancel" title="Cancelar" data-dismiss="modal">Cancelar</button>
					       <button type="submit" class="btn" title="Excluir">Excluir</button>
				        </form>
					</div>
				</div>
              </div>
          </section>
</tags:master>