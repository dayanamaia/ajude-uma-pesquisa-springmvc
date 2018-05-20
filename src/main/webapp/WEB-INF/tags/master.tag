<%@ tag language="java" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="title" required="true" %>
<!doctype html>
<html class="no-js" lang="">
  <head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>#AjudeUmaPesquisa</title>

    <link rel="apple-touch-icon" href="<c:url value="/resources/apple-touch-icon.png"/>">
    <link rel="icon" href="<c:url value="/resources/favicon.ico"/>" type="image/x-icon">
    
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/main.css"/>">

    <script src="<c:url value="/resources/scripts/vendor/modernizr.js"/>"></script>
  </head>
  <body>
    
    <div id="site">
      <header role="heading">
          <div class="container">
            <a href="/" class="logo" title="#AjudeUmaPesquisa">
                <img src="<c:url value="/resources/images/layout/logo-ajude-uma-pesquisa.png"/>" alt="#AjudeUmaPesquisa">#AjudeUmaPesquisa
            </a>
            <div class="menu" role="navigation">
                <div class="acion-menu-mobile">
                  <span class="icon ico-menu">
                      <svg>
                          <use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#menu"/>" />
                        </svg>
                  </span>
                  <span class="icon ico-close">
                      <svg>
                          <use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#close"/>" />
                        </svg>
                  </span>
                </div>
                <ul class="c-nav">
                <li class="c-nav__item"><a href="" title="Sobre" class="c-nav__link">Sobre</a></li>
                <li class="c-nav__item"><a href="" title="Pesquisas Clínicas" class="c-nav__link">Pesquisas Clínicas</a></li>
                <li class="c-nav__item"><a href="" title="Voluntários" class="c-nav__link">Voluntários</a></li>
                <li class="c-nav__item"><a href="" title="FAQ" class="c-nav__link">FAQ</a></li>
                <li class="c-nav__item c-nav__item--icon">
                    <a title="Registre-se" class="c-nav__link dropdown-toggle">Registre-se
                    <svg>
                      <use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#arrow-option"/>" />
                    </svg>
                  </a>
                  <div class="c-nav__dropdown">
                    <a class="c-nav__dropdown-item" href="/registro-pf.html" title="Pesquisador Clínico">Pesquisador Clínico</a>
                    <a class="c-nav__dropdown-item" href="/registro-pj.html" title="Laboratório Clínico">Laboratório Clínico</a>
                  </div>
                </li>
                <li class="c-nav__item c-nav__item--icon">
                  <a href="/acessar-a-conta.html" title="Acessar conta" class="c-nav__link">Acessar conta
                    <svg>
                      <use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#arrow"/>" />
                    </svg>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </header>
        <main role="main">
        	<jsp:doBody />
        </main>
        <footer class="footer" role="footer">
          <div class="container">
            <a href="<c:url value="/"/>" class="logo" title="#AjudeUmaPesquisa">
              <img src="<c:url value="/resources/images/layout/logo-ajude-uma-pesquisa-footer.png"/>" alt="#AjudeUmaPesquisa">#AjudeUmaPesquisa
            </a>
            <div class="menu" role="navigation">
                <ul class="c-nav">
                <li class="c-nav__item"><a href="" title="Sobre" class="c-nav__link">Sobre</a></li>
                <li class="c-nav__item"><a href="" title="Pesquisas Clínicas" class="c-nav__link">Pesquisas Clínicas</a></li>
                <li class="c-nav__item"><a href="" title="Voluntários" class="c-nav__link">Voluntários</a></li>
                <li class="c-nav__item"><a href="" title="FAQ" class="c-nav__link">FAQ</a></li>
                <li class="c-nav__item c-nav__item--icon">
                  <a href="" title="Cadastrar" class="c-nav__link dropdown-toggle">Cadastrar
                  <svg><use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#arrow-option"/>"></svg>
                </a>
                <div class="c-nav__dropdown">
                  <a class="c-nav__dropdown-item" href="#" title="Pesquisador Clínico">Pesquisador Clínico</a>
                  <a class="c-nav__dropdown-item" href="#" title="Laboratório Clínico">Laboratório Clínico</a>
                </div>
              </li>
                <li class="c-nav__item c-nav__item--icon">
                  <a href="" title="Entrar" class="c-nav__link">Entrar
                    <svg><use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#arrow"/>"></svg>
                  </a>
                </li>
              </ul>
            </div>
            <div class="obs">
              <p class="obs__legal">&copy; AjudeUmaPesquisa - 2018. Todos os direitos reservados - <a href="" title="Termos de uso" class="obs__link">Termos de uso</a> - <a href="" title="Política de privacidade" class="obs__link">Política de privacidade</a></p>
              <div class="c-social-links">
                <a href="" title="Facebook" class="c-social-links__link">
                	<svg><use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#social-facebook"/>"></svg>
                </a>
                <a href="" title="Twitter" class="c-social-links__link">
                	<svg><use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#social-twitter"/>"></svg>
                </a>
                <a href="" title="Instagram" class="c-social-links__link">
                	<svg><use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#social-instagram"/>"></svg>
                </a>
                <a href="" title="Linkedin" class="c-social-links__link">
                  <svg><use xlink:href="<c:url value="/resources/svg/svg/symbols.svg#social-linkedin"/>"></svg>
                </a>
              </div>
            </div>
          </div>
        </footer>
    </div>
    
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <!-- <script>
      (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
      function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
      e=o.createElement(i);r=o.getElementsByTagName(i)[0];
      e.src='https://www.google-analytics.com/analytics.js';
      r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
      ga('create','UA-XXXXX-X');ga('send','pageview');
    </script> -->

    <script src="<c:url value="/resources/scripts/vendor.js"/>"></script>
    <script src="<c:url value="/resources/scripts/main.js"/>"></script>
  </body>
</html>
