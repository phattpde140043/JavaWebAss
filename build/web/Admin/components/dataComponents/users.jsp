<%-- 
    Document   : books
    Created on : Jun 29, 2020, 8:15:56 PM
    Author     : Admin
--%>

<%@page import="java.util.List"%>
<%@page import="Controller.UserDB"%>
<%@page import="Model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script>
    var dataSet = [];
    <%
        List<User> bl = UserDB.getAllUser();
    %>
    <% for (int i = 0; i < bl.size(); i++) {%>
        var x = <%= bl.get(i).toString()%>;
//        var uID = x.pop();
//        x.unshift(uID);
        dataSet.push(x);
    <% }%>

    $(document).ready(function () {
        var table = $('#userDataTable')
                .DataTable({
                    "lengthMenu": [[-1, 50, 20, 10], ["All", 50, 20, 10]],
                    "data": dataSet
                });

        $('#userDataTable tbody tr').each(function ()
        {

//        Action to edit and delete book !!!

            $(this).append('<td><a href="users?value=update&id=' + table.row(this).data()[0] + '" class="btn btn-primary btn-sm" role="button" aria-pressed="true">Details</a></td>');
        });
    });
</script>