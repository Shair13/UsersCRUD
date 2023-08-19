<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/header.jsp" %>


<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
        <i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
</div>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Edycja użytkownika</h6>
    </div>
    <div class="card-body">
        <form method="post">
            <input type="hidden" name="id" value="${user.id}"/>
            <div class="form-group">
                <label for="userName">Nazwa</label>
                <input value="${user.userName}" name="userName" type="text" class="form-control" id="userName" placeholder="Nazwa użytkownika">
            </div>
            <div class="form-group">
                <label for="userEmail">Email</label>
                <input value="${user.email}" name="userEmail" type="email" class="form-control" id="userEmail" placeholder="Email użytkownika">
            </div>
            <div class="form-group">
                <label for="userPassword">Hasło</label>
                <input name="userPassword" type="password" class="form-control" id="userPassword" placeholder="Hasło użytkownika">
            </div>
            <button type="submit" class="btn btn-primary">Edytuj</button>
        </form>
    </div>
</div>
<!-- Area Chart -->
<div class="col-xl-8 col-lg-7">
    <div class="card shadow mb-4">
    </div>
</div>

<!-- Pie Chart -->
<div class="col-xl-4 col-lg-5">
    <div class="card shadow mb-4">
    </div>
</div>
</div>

<!-- Content Row -->

    <!-- Content Column -->
    <div class="col-lg-6 mb-4">

    </div>

    <div class="col-lg-6 mb-4">


    </div>
</div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<%@ include file="/footer.jsp" %>

</body>

</html>