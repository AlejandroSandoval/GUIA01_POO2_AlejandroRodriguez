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
                     <ul class="collapsible" data-collapsible="accordion">
                        <li>
                          <div class="collapsible-header grey darken-1 white-text"><i class="material-icons">looks_one</i>Visitas por Unidad Organizativa</div>
                          <div class="collapsible-body">
                              <form class="" method="post" action="Scripts/report1.jsp" target="_blank">
                              <div class="row">
                                  <div class="col s12 m6 l3">
                                      <p class="center-align">Unidad Organizativa</p>
                                  </div>
                                  <div class="col s12 m5 l6">
                                      <div class="input-field center-align ">
                                        <select name="cmbUnidad" id="cmbUnidad">
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
                                      <center><br><button class="waves-effect waves-light center-align btn red" type="submit">Ver Reporte</button></center>
                                  </div>
                              </div>
                              </form>
                          </div>
                        </li>
                        <li>
                          <div class="collapsible-header grey darken-1 white-text"><i class="material-icons">looks_two</i>Visitas de una persona</div>
                          <div class="collapsible-body">
                              <form class="" method="post" action="Scripts/report2.jsp" target="_blank">
                              <div class="row">
                                  <div class="col s12 m4 l3">
                                      <p class="center-align">Persona:</p>
                                  </div>
                                  <div class="col s12 m7 l6">
                                      <div class="input-field">
                                        <select name="cmbPersona" id="cmbPersona">
                                        <jsp:useBean id="beanPersonaCtrl" class="com.sv.udb.controlador.PersonaCtrl" scope="page"/>
                                        <c:forEach items="${beanPersonaCtrl.consTodo()}" var="fila">
                                            <c:choose>
                                                <c:when test="${fila.codiPers eq cmbPersona}">
                                                    <option name="codi_pers" value="${fila.codiPers}" selected="">${fila.nombPers} ${fila.apelPers} - ${fila.duiPers}</option>
                                                </c:when>
                                                <c:otherwise>
                                            <option name="codi_pers" value="${fila.codiPers}">${fila.nombPers} ${fila.apelPers} - ${fila.duiPers}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        </select>
                                      </div>
                                  </div>
                                  <div class="col s12 m12 l3">
                                      <center><br><button class="waves-effect waves-light center-align btn red" type="submit">Ver Reporte</button></center>
                                  </div>
                              </div>
                              </form>
                          </div>
                        </li>
                        <li>
                          <div class="collapsible-header grey darken-1 white-text"><i class="material-icons">looks_3</i>Visitas por Unidad Organizativa con rango de Fechas</div>
                          <div class="collapsible-body">
                              <form class="" method="post" action="Scripts/report3.jsp" target="_blank">
                                  <div class="row">
                                      <div class="col s12 m6 offset-l1 l4">
                                          <label for="date1">Fecha Inicio</label>
                                          <input type="date" class="form-control" name="date1" id="date1">
                                      </div>
                                      <div class="col s12 m6 l4">
                                          <label for="date2">Fecha Fin</label>
                                          <input type="date" class="form-control" name="date2" id="date2">
                                      </div>
                                      <div class="col s12 m12 l3">
                                          <center><br><button class="waves-effect waves-light center-align btn red" type="submit">Ver Reporte</button></center>
                                      </div>
                                  </div>
                              </form>
                          </div>
                        </li>
                     </ul>
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
