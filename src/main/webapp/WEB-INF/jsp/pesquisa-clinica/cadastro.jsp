<%@ page language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:master title="#AjudeUmaPesquisa">
	<section class="pg-register l-form">
	    <div class="container">
	      <div class="l-form__info-user">
	        <div class="l-form__nav-setings">
				<%@include file="/WEB-INF/jsp/shared/nav-settings.jsp" %>
	        </div>
	        <div class="l-form__box-register">
	          <div class="l-form__header">
	            <h2>Cadastro de Pesquisa Clínica</h2>
	            ${msg }
	          </div>
	          <c:url value="/pesquisa-clinica/cadastrar" var="action"/>
	          <form:form action="${action }" method="post" commandName="pesquisaClinica" accept-charset="iso-8859-1,utf-8" class="c-form">
	              <div class="c-form__group">
	                  <form:label path="nome" class="c-form__label hidden-label">Nome da pesquisa clínica</form:label>
	                  <form:input path="nome" id="name" minlength="8" maxlength="100" required="required" title="Digite o nome da pesquisa clínica" placeholder="Nome da pesquisa clínica" class="form-input"/>
	              </div>
	              <div class="c-form__group">
	                <form:label path="descricao" class="c-form__label hidden-label">Descricao</form:label>
	                <form:textarea path="descricao" id="" cols="30" rows="8" minlength="8" maxlength="300" required="required" title="Digite a descrição da pesquisa clínica" placeholder="Descrição da pesquisa clínica"/>
	              </div>
	              <div class="c-form__group">
	                <form:label path="criterios" class="c-form__label hidden-label">Critérios</form:label>
	                <form:textarea path="criterios" id="" cols="20" rows="4" minlength="8" maxlength="200" required="required" title="Digite os critérios da pesquisa clínica" placeholder="Critérios da pesquisa clínica"/>
	              </div>
	              <div class="c-form__group">
	                <form:label path="objetivo" class="c-form__label hidden-label">Objetivo</form:label>
	                <form:textarea path="objetivo" id="" cols="30" rows="4" minlength="8" maxlength="300" required="required" title="Digite o objetivo da pesquisa clínica" placeholder="Objetivo da pesquisa clínica"/>
	              </div>
	              <div class="col-form-2">
	                <div class="c-form__group">
	                    <form:label path="dataInicio" class="c-form__label">Data de Ínicio</form:label>
	                    <form:input path="dataInicio" id="date-init" required="required" title="Digite a data de ínicio da pesquisa clínica" placeholder="Data de ínicio da pesquisa clínica" class="form-input"/>
	                </div>
	              </div>
	              <div class="col-form-2">
	                <div class="c-form__group">
	                    <form:label path="dataTermino" class="c-form__label">Data de Termíno</form:label>
	                    <form:input path="dataTermino" id="date-end" required="required" title="Digite a data de termíno da pesquisa clínica" placeholder="Data de termíno da pesquisa clínica" class="form-input"/>
	                </div>
	              </div>
	              <div class="col-form-2">
	                <div class="c-form__group">
	                    <form:label path="idadeMinina" class="c-form__label">Idade Mínima</form:label>
	                    <form:input path="idadeMinina" id="age-init" required="required" title="Digite uma idade mínima para a pesquisa clínica" placeholder="Digite uma idade mínima para a pesquisa clínica" class="form-input"/>
	                </div>
	              </div>
	              <div class="col-form-2">
	                <div class="c-form__group">
	                    <form:label path="idadeMaxima" class="c-form__label">Idade Máxima</form:label>
	                    <form:input path="idadeMaxima" id="age-end" required="required" title="Digite uma idade máxima para a pesquisa clínica" placeholder="Digite uma idade máxima para a pesquisa clínica" class="form-input"/>
	                </div>
	              </div>
	              <div class="c-form__group">
	                <form:label path="email" class="c-form__label hidden-label">E-mail</form:label>
	                <form:input path="email" id="email" required="required" title="Digite um e-mail válido" placeholder="E-mail" class="form-input"/>
	              </div>
	              <div class="c-form__group">
	                <form:label path="telefone" class="c-form__label hidden-label">Telefone</form:label>
	                <form:input path="telefone" id="telefone" minlength="8" maxlength="8" required="required" title="Digite um telefone para a pesquisa clínica" placeholder="Telefone" class="form-input"/>
	              </div>
	              <div class="c-form__group">
	                <form:label path="celular" class="c-form__label hidden-label">Celular</form:label>
	                <form:input path="celular" id="telefone" minlength="8" maxlength="9" required="required" title="Digite um celular para a pesquisa clínica" placeholder="Celular" class="form-input"/>
	              </div>
	              <div class="c-form__group">
	                <form:label path="nomePesquisadorResponsavel" class="c-form__label hidden-label">Nome do responsável</form:label>
	                <form:input path="nomePesquisadorResponsavel" id="nomePesquisadorResponsavel" minlength="8" maxlength="100" required="required" title="Digite o nome do responsável" placeholder="Nome do responsável" class="form-input"/>
	              </div>
	              <div class="c-form__group">
	                <form:label path="protocolo" class="c-form__label hidden-label">Protocolo da pesquisa clínica</form:label>
	                <form:input path="protocolo" id="protocolo" minlength="8" maxlength="100" required="required" title="Digite o protocolo da pesquisa clínica" placeholder="Protocolo da pesquisa clínica" class="form-input"/>
	              </div>
	              <div class="c-form__group c-form__group--right">
	                <input type="submit" value="Cadastrar uma pesquisa" title="Cadastrar uma pesquisa" class="c-form__btn" />
	              </div>
	          </form:form>
	        </div>
	      </div>
	    </div>
	</section>
</tags:master>