<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../dynamic/css.jspf"%>
    <body id="page-top">
        <!-- Navigation-->
        <%@include file="../dynamic/navigationMain.jspf"%>
        <!-- Page Content-->
        <div class="container-fluid p-0">

            <!-- Experience-->
            <section class="resume-section" id="experience">
                <div class="resume-section-content">
                    <h2 class="mb-5">Experience</h2>
                    <c:forEach items="${experienceModel}" var="title">
                        <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                            <div class="flex-grow-1">
                                <h3 class="mb-0">${title.position}</h3>
                                <div class="subheading mb-3">${title.company}</div>
                                <p>${title.description}</p>
                                <security:authorize access="hasAnyRole('ADMIN')">
                                <a cass="text-primary" href='<c:url value="/editExperience/${title.id}"/>' role="button">Edit</a>
                                </security:authorize>
                            </div>
                            <div class="flex-shrink-0"><span class="text-success">${title.period}</span></div>
                        </div>

                    </c:forEach>
                    <security:authorize access="hasAnyRole('ADMIN')">
                        <a  href='<c:url value="/addExperience"/>'><button type="button" class="btn btn-outline-primary">Add</button></a>
                    </security:authorize>
                </div>
            </section>
            <hr class="m-0" />
            
        </div>
        <%@include file="../dynamic/javaScript.jspf"%>
    </body>
</html>
