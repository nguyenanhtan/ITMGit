<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="wrapper">
    <div class="main clearfix">
        <div class="col_730">        
            <div align="center">
                <h2>Edit User</h2>
                <table border="0" width="100%">
                    <form:form action="${baseUrl}/cp/saveuserdetail.html" method="POST" commandName="userForm">
                        <tr>
                            <td>Username: </td>
                            <td><form:input path="username" value="${dataUser.username}" size="30"/></td>
                            <td><form:errors path="username" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td align="left" width="20%">Email: </td>
                            <td align="left" width="40%"><form:input path="email" value="${dataUser.email}" size="30"/></td>
                            <td align="left"><form:errors path="email" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td>Old Password: </td>
                            <td><form:password path="password" size="30"/></td>
                            <td><form:errors path="password" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td>New Password: </td>
                            <td><form:password path="newpassword" size="30"/></td>
                            <td><form:errors path="newpassword" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td>Phone number: </td>
                            <td><form:input path="phone" size="30"/></td>
                            <td><form:errors path="phone" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td align="left">
                                <input type="submit" value="Edit"/>
                                <input type="button" onclick="formCancel('${baseUrl}/cp/index.html');" value="Cancel"/>
                            </td>
                            <td align="left"></td>
                        </tr>
                    </form:form>
                </table>
            </div> 
        </div> 
    </div>
</div>
<script type="text/javascript">
                                    sz_abc = (${abc} !== "") ? ${abc} : "";
                                    console.log(sz_abc);
                                    if (sz_abc !== "")
                                    {
                                        alert(sz_abc);
                                    }
</script>