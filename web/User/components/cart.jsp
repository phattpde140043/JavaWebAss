<%-- 
    Document   : cart
    Created on : Jul 17, 2020, 8:30:04 AM
    Author     : Admin
--%>

<%@page import="Controller.CategoryDB"%>
<%@page import="Model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<String> cats = new ArrayList<>();
    ArrayList<String> catIDs = new ArrayList<>();
    ArrayList<Category> cat = CategoryDB.getAll();
    for (int i = 0; i < cat.size(); i++) {
        cats.add(cat.get(i).getCatName());
        catIDs.add(cat.get(i).getCatID());
    }
    String[] category = cats.toArray(new String[0]);
    session.setAttribute("category", category);
    
    String[] categoryID = catIDs.toArray(new String[0]);
    session.setAttribute("categoryID", categoryID);

    //index default
    int i = 0;
    session.setAttribute("i", i);
%>
<%
    
%>
<div></div>
