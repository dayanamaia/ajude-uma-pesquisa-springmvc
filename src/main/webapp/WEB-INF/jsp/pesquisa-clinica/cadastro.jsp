<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:master title="#AjudeUmaPesquisa">
          <section class="pg-register l-form">
              <div class="container">
                <div class="l-form__info-user">
                    <div class="l-form__nav-setings">
                        <div class="c-nav-settings">
                            <a href="" title="Dashboard" class="c-nav-settings__link">
                                Dashboard
								<svg>
									<use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#note"/>" />
								</svg>
                            </a>
                            <a href="" title="Cadastrar uma Pesquisa Clínica" class="c-nav-settings__link">
                                Cadastrar uma Pesquisa Clínica
								<svg>
									<use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#plus"/>" />
								</svg>
                            </a>
                        </div>
                    </div>
                  <div class="l-form__box-register">
                    <div class="l-form__header">
                      <h2>Cadastro de Pesquisa Clínica</h2>
                      ${msg }
                    </div>
                    <c:url value="/pesquisa-clinica/cadastrar" var="action"/>
                    <form:form action="${action    }" method="post" commandName="pesquisaClinica" class="c-form">
                        <div class="c-form__group">
                            <form:label path="nome" class="c-form__label hidden-label">Nome da pesquisa clínica</form:label>
                            <form:input type="text" path="nome" value="" id="name" minlength="8" maxlength="100" required="required" title="Digite o nome da pesquisa clínica" placeholder="Nome da pesquisa clínica" class="form-input"/>
                        </div>
                        <div class="c-form__group">
                          <form:label path="descricao" class="c-form__label hidden-label">Descricao</form:label>
                          <form:textarea path="descricao" id="" cols="30" rows="8" minlength="8" maxlength="300" required="required" title="Digite a descrição da pesquisa clínica" placeholder="Descrição da pesquisa clínica"></form:textarea>
                        </div>
                        <div class="c-form__group">
                          <form:label path="criterios" class="c-form__label hidden-label">Critérios</form:label>
                          <form:textarea path="criterios" id="" cols="30" rows="4" minlength="8" maxlength="200" required="required" title="Digite os critérios da pesquisa clínica" placeholder="Critérios da pesquisa clínica"></form:textarea>
                        </div>
                        <div class="c-form__group">
                          <form:label path="objetivo" class="c-form__label hidden-label">Objetivo</form:label>
                          <form:textarea path="objetivo" id="" cols="30" rows="4" minlength="8" maxlength="300" required="required" title="Digite o objetivo da pesquisa clínica" placeholder="Objetivo da pesquisa clínica"></form:textarea>
                        </div>
                        <div class="col-form-2">
                          <div class="c-form__group">
                              <form:label path="dataInicio" class="c-form__label">Data de Ínicio</form:label>
                              <form:input type="date" path="dataInicio" value="" id="date-init" required="required" data-rule-date="true" title="Digite a data de ínicio da pesquisa clínica" placeholder="Data de ínicio da pesquisa clínica" class="form-input"/>
                          </div>
                        </div>
                        <div class="col-form-2">
                          <div class="c-form__group">
                              <form:label path="dataTermino" class="c-form__label">Data de Termíno</form:label>
                              <form:input type="date" path="dataTermino" value="" id="date-end" required="required" data-rule-date="true" title="Digite a data de termíno da pesquisa clínica" placeholder="Data de termíno da pesquisa clínica" class="form-input"/>
                          </div>
                        </div>
                        <div class="col-form-2">
                          <div class="c-form__group">
                              <form:label path="idadeMinina" class="c-form__label">Idade Mínima</form:label>
                              <form:input type="number" path="idadeMinina" value="" id="age-init" required="required" data-rule-date="true" title="Digite uma idade mínima para a pesquisa clínica" placeholder="Digite uma idade mínima para a pesquisa clínica" class="form-input"/>
                          </div>
                        </div>
                        <div class="col-form-2">
                          <div class="c-form__group">
                              <form:label path="idadeMaxima" class="c-form__label">Idade Máxima</form:label>
                              <form:input type="number" path="idadeMaxima" value="" id="age-end" required="required" data-rule-date="true" title="Digite uma idade máxima para a pesquisa clínica" placeholder="Digite uma idade máxima para a pesquisa clínica" class="form-input"/>
                          </div>
                        </div>
                    	<%-- <div class="col-form-2 col-form--align">
                          <div class="c-form__group">
                            <p class="c-form__label">Gênero</p>
                            <form:input id="female" value="female" path="gender" type="radio" required="required" title="Selecione uma opção" class="custom-checkbox"/>
                            <form:label path="female" class="custom-checkbox-label">Feminino</form:label>
                            <form:input id="male" value="male" path="gender" type="radio" required="required" title="Selecione uma opção" class="custom-checkbox"/>
                            <form:label path="male" class="custom-checkbox-label">Masculino</form:label>
                            <form:input id="both" value="both" path="gender" type="radio" required="required" title="Selecione uma opção" class="custom-checkbox"/>
                            <form:label path="both" class="custom-checkbox-label">Ambos</form:label>
                          </div>
                        </div> --%>
                        <div class="c-form__group">
                          <form:label path="email" class="c-form__label hidden-label">E-mail</form:label>
                          <form:input type="text" path="email" value="" id="email" required="required" title="Digite um e-mail válido" placeholder="E-mail" class="form-input"/>
                        </div>
                        <div class="c-form__group">
                          <form:label path="telefone" class="c-form__label hidden-label">Telefone</form:label>
                          <form:input type="tel" path="telefone" value="" id="telefone" minlength="8" maxlength="8" required="required" title="Digite um telefone para a pesquisa clínica" placeholder="Telefone" class="form-input"/>
                        </div>
                        <div class="c-form__group">
                          <form:label path="celular" class="c-form__label hidden-label">Celular</form:label>
                          <form:input type="tel" path="celular" value="" id="telefone" minlength="8" maxlength="9" required="required" title="Digite um celular para a pesquisa clínica" placeholder="Celular" class="form-input"/>
                        </div>
                        <div class="c-form__group">
                          <form:label path="nomePesquisadorResponsavel" class="c-form__label hidden-label">Nome do responsável</form:label>
                          <form:input type="text" path="nomePesquisadorResponsavel" value="" id="nomePesquisadorResponsavel" minlength="8" maxlength="100" required="required" title="Digite o nome do responsável" placeholder="Nome do responsável" class="form-input"/>
                        </div>
                        <div class="c-form__group">
                          <form:label path="protocolo" class="c-form__label hidden-label">Protocolo da pesquisa clínica</form:label>
                          <form:input type="text" path="protocolo" value="" id="protocolo" minlength="8" maxlength="100" required="required" title="Digite o protocolo da pesquisa clínica" placeholder="Protocolo da pesquisa clínica" class="form-input"/>
                        </div>
                        <div class="c-form__group c-form__group--right">
                          <form:button path="button" title="Cadastrar uma pesquisa" class="c-form__btn">Cadastrar uma pesquisa</form:button>
                        </div>
                    </form:form>
                  </div>
                </div>
              </div>
          </section>
</tags:master>