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
        User s = UserDB.getUserById(id);
    %>
    <div class="col-xl-5 p-0 mr-5">
        <h1 class="h3 mb-2 text-gray-800">Update Users</h1>
        <form method="POST" action="updateUser">
            
            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1" >ID</span>
                </div>

                <!--ID users here !!!-->

                <input name="id" value="<%=s.getuID()%>" readonly type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>

            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1" >Email</span>
                </div>

                <!--email users here !!!-->

                <input name="email" value="<%=s.getuEmail()%>" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>

            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1" >Pasword</span>
                </div>

                <!--Pasword users here !!!-->

                <input name="password" value="<%=s.getuPassword()%>" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>

            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1" >Display Name</span>
                </div>

                <!--Name users here !!!-->

                <input name="name" value="<%=s.getuName()%>" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>

            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1" >Phone Number</span>
                </div>

                <!--Phone Number users here !!!-->

                <input name="phone" value="<%=s.getuPhone()%>" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
            </div>

            <div class="input-group mb-3 col-xl-12 p-0">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1" >Address</span>
                </div>

                <!--Address users here !!!-->

                <input name="address" value="<%=s.getuAddress()%>" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
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
                            Update users ?
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
        <img class="w-100 px-5 mt-5" src="Admin/images/undraw_add_user_ipe3.svg" alt=""adding>
    </div>
</div>