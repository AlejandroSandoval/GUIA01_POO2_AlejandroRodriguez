<%-- 
    Document   : index
    Created on : 08-06-2016, 11:23:19 AM
    Author     : aleso
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type='text/css' rel='stylesheet' href='css/materialize.min.css'/>
	<link type='text/css' rel='stylesheet' href='css/icons.css'/>
        <link type='text/css' rel='stylesheet' href='css/style.css'/>
    </head>
    <body>
        <header>
            <nav>
                <div class="nav-wrapper light-blue darken-4">
                  <a href="#!" class="brand-logo">REPORTES</a>
                  <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                  <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href=""><i class="material-icons left">settings</i>Configuracion</a></li>
                  </ul>
                  <ul class="side-nav" id="mobile-demo">
                    <li><a href=""><i class="material-icons left hide-on-small-only center-align">settings</i>Configuracion</a></li> 
                  </ul>
                </div>
            </nav>
        </header>
        <main>
        <div class="container">
            <div class="row">
                <div class="col s12">
                    <h3 class="light italic">Reportes con JasperReports</h3>
                    <form>
                     <ul class="collapsible" data-collapsible="accordion">
                        <li>
                          <div class="collapsible-header grey darken-1 white-text"><i class="material-icons">looks_one</i>Visitas por Unidad Organizativa</div>
                          <div class="collapsible-body">
                              <div class="row">
                                  <div class="col s12 m6 l3">
                                      <p class="center-align">Unidad Organizativa</p>
                                  </div>
                                  <div class="col s12 m5 l6">
                                      <div class="input-field center-align ">
                                        <select name="cmbUnidad">
                                        <jsp:useBean id="beanUnidadCtrl" class="com.sv.udb.controlador.UnidadCtrl" scope="page"/>
                                        <c:forEach items="${beanUnidadCtrl.consTodo()}" var="fila">
                                            <c:choose>
                                                <c:when test="${fila.codiUnid eq cmbUnidad}">
                                                    <option name="codi_unid" value="${fila.codiUnid}" selected="">${fila.nombUnid}</option>
                                                </c:when>
                                                <c:otherwise>
                                            <option name="codi_unid" value="${fila.codiUnid}">${fila.nombUnid}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        </select>
                                      </div>
                                  </div>
                                  <div class="col s12 m12 l3">
                                      <center><br><a class="waves-effect waves-light center-align btn">Ver Reporte</a></center>
                                  </div>
                              </div>
                          </div>
                        </li>
                        <li>
                          <div class="collapsible-header grey darken-1 white-text"><i class="material-icons">looks_two</i>Visitas de una persona</div>
                          <div class="collapsible-body">
                              <div class="row">
                                  <div class="col l2 m2 s12">
                                      <p>Persona:</p>
                                  </div>
                                  <div class="col l7 m7 s12">
                                      <div class="input-field">
                                        <select>
                                          <option value="" disabled selected>Choose your option</option>
                                          <option value="1">Option 1</option>
                                          <option value="2">Option 2</option>
                                          <option value="3">Option 3</option>
                                        </select>
                                      </div>
                                  </div>
                                  <div class="col l3 m3 s12">
                                      <br><a class="waves-effect waves-light btn">Ver Reporte</a>
                                  </div>
                              </div>
                          </div>
                        </li>
                        <li>
                          <div class="collapsible-header grey darken-1 white-text"><i class="material-icons">looks_3</i>Visitas por Unidad Organizativa con rango de Fechas</div>
                          <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                        </li>
                     </ul>
                     </form>
                </div>
            </div>
        </div>
        </main>
        <footer class="page-footer white">
          <div class="footer-copyright light-blue darken-4">
            <div class="container">
            Develop by: Alejandro Rodriguez
            <a class="grey-text text-lighten-4 right" href="#!">POO II</a>
            </div>
          </div>
        </footer>
    <script src='js/jquery-2.2.3.min.js'></script>
    <script src='js/materialize.min.js'></script>
    <script>
	$(document).ready(function(){ $('.button-collapse').sideNav(); });
        $(document).ready(function(){ $('select').material_select(); });
</script>
    </body>
</html>
