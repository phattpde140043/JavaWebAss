<%-- 
    Document   : books.jsp
    Created on : Jun 29, 2020, 9:13:20 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid content">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Order</h1>

    <p class="mb-4">
        DataTables is a third party plugin that is used to generate the demo table below. For more information, please visit the DataTables.net 
    </p>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
        </div>
        <div class="card-body">
            <table
                id="transactionDataTable"
                class="display table table-striped table-bordered"
                width="100%"
                >
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Cart</th>
                        <th>Date</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Cart</th>
                        <th>Date</th>
                        <th>Status</th>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>
