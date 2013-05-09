<html>
<head>
<title>first page</title>
</head>

<body>
<h1>Hi hello</h1>

<table border="1">
<tr>
		<td>Name</td>
    	<td> dept</td>
     	<td> DueDate</td>
     </tr>
<g:each in="${allprojects}" status="i" var="thisprj">
<tr>
   <td>${thisprj.name} </td>
    <td>${thisprj.dept} </td>
     <td>${thisprj.duedate} </td>

</tr>
</g:each>
</table>
</body>
</html>