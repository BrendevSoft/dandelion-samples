<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Export activation</h3>
      <br />
   </div>
</div>

<datatables:table id="myFirstTableId" data="${persons}" row="person" export="csv" dom="lfrEtip">
   <datatables:column title="Id" property="id" />
   <datatables:column title="FirstName" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" />
   <datatables:column title="Mail">
      <a href="mailto:${person.mail}">${person.mail}</a>
   </datatables:column>
</datatables:table>
