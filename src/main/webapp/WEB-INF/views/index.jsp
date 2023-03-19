<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="dynamic/css.jspf"%>

    <body id="page-top">
        <!-- Navigation-->
        <%@include file="dynamic/navigationMain.jspf"%>
        <!-- Page Content-->
        <div class="container-fluid p-0">
            <c:forEach items="${aboutModel}" var="title">

            <!-- About-->
            <section class="resume-section" id="about">
                <div class="resume-section-content">
                    <h1 class="mb-0">
                            ${title.name}
                        <span class="text-success">${title.lastName}</span>
                    </h1>
                    <div class="subheading mb-5">
                            ${title.address} ·
                        <a class="text-success" href="mailto:${title.email}">${title.email}</a>
                    </div>
                    <p class="lead mb-5">${title.description}</p>
                    <div class="social-icons">
                        <a class="social-icon" href="${title.instagram}"><i class="fab fa-linkedin-in"></i></a>
                        <a class="social-icon" href="${title.gitHub}"><i class="fab fa-github"></i></a>
                        <a class="social-icon" href="${title.twitter}"><i class="fab fa-twitter"></i></a>
                        <a class="social-icon" href="${title.facebook}"><i class="fab fa-facebook-f"></i></a>
                    </div>

                    <br>
                    <div>
                        <!-- Button trigger modal -->
                        <security:authorize access="hasAnyRole('ADMIN')">
<%--                        <form method="post" action='<c:url value="${aboutModel.id}"/>'>--%>
                        <form method="post">
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Edit Information</button>
                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Edit Information</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form>
                                                    <div class="form-group">
                                                        <label for="name" class="col-form-label">Name:</label>
                                                        <input type="text" class="form-control" id="name" name ="name" value="${title.name}">
                                                        <label for="lastName" class="col-form-label">Surname:</label>
                                                        <input type="text" class="form-control" id="lastName" name ="lastName" value="${title.lastName}">
                                                        <label for="address" class="col-form-label">Address:</label>
                                                        <input type="text" class="form-control" id="address" name ="address" value="${title.address}">
                                                        <label for="email" class="col-form-label">E-mail:</label>
                                                        <input type="text" class="form-control" id="email" name ="email" value="${title.email}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="description" class="col-form-label">Description:</label>
                                                        <textarea class="form-control" id="description" name ="description">${title.description}</textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-form-label" for="IG">IG:</label>
                                                        <input class="form-control" type="text"  id="IG" name ="instagram" value="${title.instagram}" >
                                                        <label class="col-form-label" for="git" >Git:</label>
                                                        <input class="form-control" type="text"  id="git" name ="gitHub" value="${title.gitHub}" >
                                                        <label class="col-form-label" for="twitter" >Twitter:</label>
                                                        <input class="form-control" type="text"  id="twitter" name ="twitter" value="${title.twitter}" >
                                                        <label class="col-form-label" for="fb" >Fb:</label>
                                                        <input class="form-control" type="text"  id="fb" name ="facebook" value="${title.facebook}" >

                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-success">Submit</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </form>
                        </security:authorize>
                    </div>

                </div>
            </section>
            </c:forEach>

            <hr class="m-0" />

        </div>
        <%@include file="dynamic/javaScript2.jspf"%>
    </body>
</html>
