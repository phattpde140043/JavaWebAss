<%-- 
    Document   : transactions
    Created on : Jul 9, 2020, 7:45:31 AM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Controller.TransactionDB"%>
<%@page import="Model.Transaction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script>
    var dataSet = [];
    <%
        TransactionDB db = new TransactionDB();
        ArrayList<Transaction> ls = db.getAll();
    %>
    <% for (int i = 0; i < ls.size(); i++) {%>
    dataSet.push(<%= ls.get(i).toString()%>);
    <% }%>

    $(document).ready(function () {
        var success = '<a href="#" class="badge badge-success">Success</a>';
        var pending = '<a href="#" class="badge badge-warning">Pending</a>';
        var table = $('#transactionDataTable')
                .DataTable({
                    "lengthMenu": [[-1, 50, 20, 10], ["All", 50, 20, 10]],
                    "data": dataSet
                });

        $('#transactionDataTable tbody tr').each(function () {
            var elem = $(this).find('td:last');
            //do something with elem
            if (elem.html() == "false") {
                elem.html(pending);
            }if(elem.html() == "true") {
                elem.html(success);
            }
        });
    });
</script>
