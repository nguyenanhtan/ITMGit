<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="wrapper">
    <div class="main clearfix">
        <div class="col_730">        
            <table width="100%" cellspacing="0" cellpadding="0" border="0" class="total_res">
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Username</th>
                        <th>Email</th>     
                        <th>role</th> 
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${dataUser.data}">
                        <tr>
                            <td>
                                ${user.id}
                            </td>
                            <td>
                                ${user.username}
                            </td>
                            <td>
                                ${user.email}
                            </td>
                            <td>
                                <c:if test="${user.role == 'SUPER_ADMIN'}">
                                    Supper Admin
                                </c:if>                                
                            </td>

                            <td>
                                <a href="${baseUrl}/cp/userdetail/${user.id}.html">Edit</a>
                            </td>

                            <td>
                                <a href="${baseUrl}/cp/removeuser/${user.id}.html">Remove</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col_200">
            <a href="${baseUrl}/cp/addnewuser.html"> <img title="Add a new user" alt="Add a new user" src="<c:url value="/assets/images/add.png"/>" /> </a>
        </div>
    </div>
</div>
<script type="text/javascript">
    var sz_Response = "${sz_Response}";
    if (sz_Response !== "")
    {
        alert(sz_Response);
    }
</script>