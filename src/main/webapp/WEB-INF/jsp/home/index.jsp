<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:master title="AjudeUmaPesquisa">

          <section class="c-banner">
              <div class="container">
                <div class="c-banner__info">
                  <h2 class="c-banner__title">Ajude uma Pesquisa Clínica</h2>
                  <p class="c-banner__description">Divulge, pesquise, compartilhe sobre as <a href="/" class="c-banner__link" title="pesquisas clínicas">pesquisas clínicas</a> em andamento no Brasil.</p>
                </div>
                <div class="banner__cover">
                	<img src="<c:url value="/resources/images/banner/ajude-uma-pesquisa-info.png"/>" alt="#AjudeUmaPesquisa" class="banner__img">
                </div>
              </div>
              <a href="" title="Scroll Down" class="c-banner__link-scroll">
                <svg><use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#arrow-scroll"/>"></svg>
              </a>
          </section>
          <section class="research">
            <div class="filter">
              <div class="container">
                <form id="f-research" action="" class="c-form">
                    <div class="c-form-search__group c-form__form-group--search">
                        <label for="search" class="is-hidden">Digite o nome da pesquisa Clínica</label>
                        <input type="search" class="c-form__form-control" id="search" placeholder="Digite o nome da pesquisa Clínica">
                    </div>
                    <div class="c-form-search__group c-form-search__group--inline">
                      <div class="col-form">
                        <label for="research-type" class="is-hidden">Tipo de pesquisa</label>
                        <select id="research-type" class="form-search__control">
                          <option>Tipo de pesquisa</option>
                          <option>Remédio</option>
                          <option>Reabilitaçãoa</option>
                          <option>Questionário</option>
                        </select>
                        <label for="research-state" class="is-hidden">Estado</label>
                        <select id="research-state" class="form-search__control">
                          <option>Estado</option>
                          <option>Estado</option>
                        </select>
                      </div>
                      <div class="col-form col-form__sort">
                        <label for="research-sort">Ordenar por</label>
                        <select id="research-sort" class="form-search__control">
                          <option>Ordenar por</option>
                          <option>Data mais recente</option>
                        </select>
                      </div>
                    </div>
                </form>
              </div>
            </div>
            <div class="list-card">
              <div class="container">
                <div class="c-card">
                  <div class="c-card__content">
                    <a href="">
                      <h3 class="c-card__title">Accelerating IoT deployment for under $50</h3>
                      <p class="c-card__detail">Cheap & ease onborading, fully customizable plans, and developer-friendly APs enable companies to get up and runnin quickly. Even with limited budgets.</p>
                    </a>
                    <a href="">
                      <p class="c-card__location">São Paulo</p>
                    </a>
                  </div>
                  <div class="c-card__footer">
                    <div class="c-card__labels">
                      <span class="c-label c-label--remedio">remédio</span>
                      <span class="c-label c-label--reabilitacao">reabilitação</span>
                      <span class="c-label c-label--questionario">questionário</span>
                    </div>
                  </div>
                </div>
                <div class="c-card">
                  <div class="c-card__content">
                    <a href="">
                      <h3 class="c-card__title">Accelerating IoT deployment for under $50</h3>
                      <p class="c-card__detail">Cheap & ease onborading, fully customizable plans, and developer-friendly APs enable companies to get up and runnin quickly. Even with limited budgets.</p>
                    </a>
                    <a href="">
                      <p class="c-card__location">São Paulo</p>
                    </a>
                  </div>
                  <div class="c-card__footer">
                    <div class="c-card__labels">
                      <span class="c-label c-label--remedio">remédio</span>
                      <span class="c-label c-label--reabilitacao">reabilitação</span>
                      <span class="c-label c-label--questionario">questionário</span>
                    </div>
                  </div>
                </div>
                <div class="c-card">
                  <div class="c-card__content">
                    <a href="">
                      <h3 class="c-card__title">Accelerating IoT deployment for under $50</h3>
                      <p class="c-card__detail">Cheap & ease onborading, fully customizable plans, and developer-friendly APs enable companies to get up and runnin quickly. Even with limited budgets.</p>
                    </a>
                    <a href="">
                      <p class="c-card__location">São Paulo</p>
                    </a>
                  </div>
                  <div class="c-card__footer">
                    <div class="c-card__labels">
                      <span class="c-label c-label--remedio">remédio</span>
                      <span class="c-label c-label--reabilitacao">reabilitação</span>
                      <span class="c-label c-label--questionario">questionário</span>
                    </div>
                  </div>
                </div>
                <div class="c-card">
                  <div class="c-card__content">
                    <a href="">
                      <h3 class="c-card__title">Accelerating IoT deployment for under $50</h3>
                      <p class="c-card__detail">Cheap & ease onborading, fully customizable plans, and developer-friendly APs enable companies to get up and runnin quickly. Even with limited budgets.</p>
                    </a>
                    <a href="">
                      <p class="c-card__location">São Paulo</p>
                    </a>
                  </div>
                  <div class="c-card__footer">
                    <div class="c-card__labels">
                      <span class="c-label c-label--remedio">remédio</span>
                      <span class="c-label c-label--reabilitacao">reabilitação</span>
                      <span class="c-label c-label--questionario">questionário</span>
                    </div>
                  </div>
                </div>
                <div class="c-card">
                  <div class="c-card__content">
                    <a href="">
                      <h3 class="c-card__title">Accelerating IoT deployment for under $50</h3>
                      <p class="c-card__detail">Cheap & ease onborading, fully customizable plans, and developer-friendly APs enable companies to get up and runnin quickly. Even with limited budgets.</p>
                    </a>
                    <a href="">
                      <p class="c-card__location">São Paulo</p>
                    </a>
                  </div>
                  <div class="c-card__footer">
                    <div class="c-card__labels">
                      <span class="c-label c-label--remedio">remédio</span>
                      <span class="c-label c-label--reabilitacao">reabilitação</span>
                      <span class="c-label c-label--questionario">questionário</span>
                    </div>
                  </div>
                </div>
                <div class="c-card">
                  <div class="c-card__content">
                    <a href="">
                      <h3 class="c-card__title">Accelerating IoT deployment for under $50</h3>
                      <p class="c-card__detail">Cheap & ease onborading, fully customizable plans, and developer-friendly APs enable companies to get up and runnin quickly. Even with limited budgets.</p>
                    </a>
                    <a href="">
                      <p class="c-card__location">São Paulo</p>
                    </a>
                  </div>
                  <div class="c-card__footer">
                    <div class="c-card__labels">
                      <span class="c-label c-label--remedio">remédio</span>
                      <span class="c-label c-label--reabilitacao">reabilitação</span>
                      <span class="c-label c-label--questionario">questionário</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>

</tags:master>