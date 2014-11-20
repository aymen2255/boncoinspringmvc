<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- DC DataGrid CSS -->
<link rel="stylesheet" href="dreamcodes/datagrid/css/tsc_datagrid.css" />
 
<!-- jQuery Library (skip this step if already called on page ) -->
<script type="text/javascript" src="dreamcodes/jquery.min.js"></script> <!-- (do not call twice) -->
 
<!-- DC DataGrid JS -->
<script type="text/javascript" src="dreamcodes/datagrid/js/tsc_datagrid.js"></script>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>Id</td>
			<td>nom</td>
			<td>prenom</td>
			<td>login</td>

		</tr>
		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.id}</td>
				<td>${user.nom}</td>
				<td>${user.prenom}</td>
				<td>${user.prenom}</td>


			</tr>



		</c:forEach>

	</table>
	
<!-- 	********************************************************************             -->
<div id="tsort-tablewrapper" style="width:90%;">
  <div id="tsort-tableheader">
    <div class="tsort-search">
      <select id="tsort-columns" onchange="sorter.search('query')">
      </select>
      <input type="text" id="query" onkeyup="sorter.search('query')" />
    </div>
    <span class="tsort-details">
    <div>Records <span id="tsort-startrecord"></span>-<span id="tsort-endrecord"></span> of <span id="tsort-totalrecords"></span></div>
    <div><a href="javascript:sorter.reset()">reset</a></div>
    </span> </div>
  <table cellpadding="0" cellspacing="0" border="0" id="tsctablesort1" class="tinytable">
    <thead>
      <tr>
        <th class="nosort"><h3>ID</h3></th>
        <th><h3>Name</h3></th>
        <th><h3>Phone</h3></th>
        <th><h3>Birthdate</h3></th>
        <th><h3>Last Access</h3></th>
        <th><h3>Rating</h3></th>
        <th><h3>Done</h3></th>
        <th><h3>Salary</h3></th>
        <th><h3>Score</h3></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>John Hart</td>
        <td>(627) 536-4760</td>
        <td>12/02/1962</td>
        <td>March 26, 2012</td>
        <td>-7</td>
        <td>7%</td>
        <td>$73,229</td>
        <td>6.9</td>
      </tr>
      </tbody>
  </table>
  <div id="tsort-tablefooter">
    <div id="tsort-tablenav">
      <div> <img src="dreamcodes/datagrid/images/first.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1,true)" /> <img src="dreamcodes/datagrid/images/previous.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1)" /> <img src="dreamcodes/datagrid/images/next.gif" width="16" height="16" alt="First Page" onclick="sorter.move(1)" /> <img src="dreamcodes/datagrid/images/last.gif" width="16" height="16" alt="Last Page" onclick="sorter.move(1,true)" /> </div>
      <div>
        <select id="tsort-pagedropdown">
        </select>
      </div>
      <div> <a href="javascript:sorter.showall()">view all</a> </div>
    </div>
    <div id="tsort-tablelocation">
      <div>
        <select onchange="sorter.size(this.value)">
          <option value="5">5</option>
          <option value="10" selected="selected">10</option>
          <option value="20">20</option>
          <option value="50">50</option>
          <option value="100">100</option>
        </select>
        <span>Entries Per Page</span> </div>
      <div class="tsort-page">Page <span id="tsort-currentpage"></span> of <span id="tsort-totalpages"></span></div>
    </div>
  </div>
</div>
<!-- DC DataGrid Settings -->
<script type="text/javascript">
    var sorter = new TINY.table.sorter('sorter','tsctablesort1',{
        headclass:'head',
        ascclass:'asc',
        descclass:'desc',
        evenclass:'tsort-evenrow',
        oddclass:'tsort-oddrow',
        evenselclass:'tsort-evenselected',
        oddselclass:'tsort-oddselected',
        paginate:true, // pagination (true,false)
        size:10, // show 10 results per page
        colddid:'tsort-columns',
        currentid:'tsort-currentpage',
        totalid:'tsort-totalpages',
        startingrecid:'tsort-startrecord',
        endingrecid:'tsort-endrecord',
        totalrecid:'tsort-totalrecords',
        hoverid:'tsort-selectedrow',
        pageddid:'tsort-pagedropdown',
        navid:'tsort-tablenav',
        sortcolumn:1, // sort column 1
        sortdir:1, // sort direction
        sum:[8], // create totalsum for column 8
        avg:[6,7,8,9], // create averages for column 6,7,8,9
        columns:[{index:6, format:'%', decimals:1},{index:7, format:'$', decimals:0}], // classify for proper sorting
        init:true // activate datagrid (true,false)
    });
  </script>
<!-- DC DataGrid End -->
<div class="tsc_clear"></div> <!-- line break/clear line -->
</body>
</html>