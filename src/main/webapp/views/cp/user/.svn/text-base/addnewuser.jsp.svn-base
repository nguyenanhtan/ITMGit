<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="wrapper">
    <div class="main clearfix">
        <div class="col_730">        
            <div align="center">
                <h2>Add a new user</h2>
                <table border="0" width="100%">
                    <form:form action="${baseUrl}/cp/saveuser.html" method="POST" commandName="userFormAdd">
                        <tr>
                            <td>Username: </td>
                            <td><form:input path="username" value="" size="30"/></td>
                            <td><form:errors path="username" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td align="left" width="20%">Email: </td>
                            <td align="left" width="40%"><form:input path="email" value="" size="30"/></td>
                            <td align="left"><form:errors path="email" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td>Old Password: </td>
                            <td><form:password path="password" size="30"/></td>
                            <td><form:errors path="password" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td>Confirm Password: </td>
                            <td><form:password path="confpassword" size="30"/></td>
                            <td><form:errors path="confpassword" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td align="left"><input type="submit" value="Add"/></td>
                            <td align="left"><input type="button" onclick="formCancel('${baseUrl}/cp/index.html');" value="Cancel"/></td>
                        </tr>
                    </form:form>
                </table>
            </div> 
        </div> 
    </div>
</div>
<script type="text/javascript">
</script>