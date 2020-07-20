<%@page import="java.util.ArrayList"%>
<%@page import="Controller.TransactionDB"%>
<%@page import="Model.Transaction"%>
<%@page import="Controller.UserDB"%>
<%@page import="Model.User"%>
<%-- 
    Document   : userssAddNew
    Created on : Jul 6, 2020, 11:40:54 AM
    Author     : Admin
--%>
<%@page import="Controller.UserDB"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid content d-flex">
    <!-- Page Heading -->
    <%
        String id = request.getParameter("id");
        TransactionDB bd = new TransactionDB();
        ArrayList<Transaction> s = bd.getBytID(id);
    %>
    <div class="col-xl-5 p-0 mr-5">
        <h1 class="h3 mb-2 text-gray-800">Update Transaction</h1>
        <form method="POST" action="updateOrder">

            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1" >ID</span>
                </div>

                <!--ID here !!!-->

                <input name="id" value="<%=s.get(0).gettID()%>" readonly type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>

            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1" >Name</span>
                </div>

                <!--Name here !!!-->

                <input readonly name="name" value="<%=(s.get(0).getUs()).getuName()%>" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>

            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1" >Cart</span>
                </div>

                <!--order here !!!-->

                <textarea readonly name="order" value="<%=s.get(0).getCart()%>" type="textarea" class="form-control" placeholder="<%=s.get(0).getCart()%>" aria-label="Username" aria-describedby="basic-addon1"></textarea>
            </div>

            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1" >Date</span>
                </div>

                <!--Date here !!!-->

                <input readonly name="date" value="<%=s.get(0).gettDate()%>" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            
            
            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1" >Total</span>
                </div>

                <!--Date here !!!-->

                <input readonly name="date" value="<%=s.get(0).getTotal()%>" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            

            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">Status</label>
                </div>

                <!--status here !!!-->

                <select name="status" class="custom-select" id="inputGroupSelect01">
                    <%
                        if (s.get(0).isStatus()) {
                    %>
                    <option value="<%=s.get(0).isStatus()%>" selected>Success</option>
                    <option value=<%=0%> >Pending</option>
                    <%
                    } else {
                    %>
                    <option value="<%=s.get(0).isStatus()%>" selected>Pending</option>
                    <option value=<%=1%> >Success</option>
                    <%
                        }
                    %>
                </select>
            </div>
                
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary w-50" data-toggle="modal" data-target="#exampleModal">
                Update
            </button>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Please check the details</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            Update transaction ?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                            <!--Submit button !!!-->

                            <button type="submit" class="btn btn-success">Update</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>


    </div>
    <div  class="col-xl-6 p-0 d-flex justify-content-between align-items-start">
        <img class="w-100 px-5 mt-5" src="Admin/images/undraw_super_thank_you_obwk.svg" alt=""adding>
    </div>
</div>