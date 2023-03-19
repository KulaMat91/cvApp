<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
                        <form method="post" action='<c:url value="/addExperience/${experienceModel.id}"/>'>

                        <h2 class="mb-5">Experience</h2>
                        <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                            <div class="flex-grow-1">
                                <h3 class="mb-0"> <input type="text" name="position" value="${experienceModel.position}"></h3>
                                <br>
                                <div class="subheading mb-3"> <input  type="text" name="company" value="${experienceModel.company}"></div>
                                <div> <textarea  rows="5" name="description">${experienceModel.description}</textarea> </div>
                            </div>
                            <div class="flex-shrink-0"><span > <input  type="text" name="period" value="${experienceModel.period}"></span></div>
                        </div>
                        <input class="btn btn-success" type="submit" value="SUBMIT" >
                        </form>
                        <br>
                        <form method="post" action='<c:url value="/editExperience/${experienceModel.id}"/>'>
                            <input class="btn btn-danger" type="submit" value="DELETE" >
                        </form>
                    </div>
                </section>
            <hr class="m-0" />
            
        </div>
        <%@include file="../dynamic/javaScript.jspf"%>
    </body>
</html>
