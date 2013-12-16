<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Using callbacks</h3>
      <br />
   </div>
</div>

<script>
	function callbackCreatedRow(nRow, aData, iDataIndex) {
		$('td:eq(4)', nRow).css({ 'font-weight': 'bold' });
	}
    function infoCallback( oSettings, iStart, iEnd, iMax, iTotal, sPre ) {
        return iStart +" to "+ iEnd;
    }
</script>

<datatables:table id="myTableId" data="${persons}">
   <datatables:column title="Id" property="id" />
   <datatables:column title="Firstname" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" sortable="false" />
   <datatables:column title="Mail" property="mail" />
   <datatables:callback type="info" function="infoCallback" />
   <datatables:callback type="createdRow" function="callbackCreatedRow" />
</datatables:table>

