<html>
<body>
<form name="form1" method="post" action="login?requestPage=updateItm">
<table>
	<tr>
    	<th>Below are the list of items with status</th>
    </tr>
	<tr>
		<td>Select</td>    	
        <td>Item Id</td>
        <td>Item Name</td>
        <td>Item Location</td>
        <td>Status</td>
        <td>Last Updated</td>
    </tr>   
    <c:forEach var="item" items="${items}">
    	<tr>  
    	  	<td>
    	  		<input type="checkbox" name="itemId" value="${item.itemId}">
    	  	</td>	
    		<td>${item.itemId}</td>
    		<td>${item.itemName}</td>
    		<td>${item.itemLocation}</td>
    		<td>${item.status}</td>
    		<td>${item.dateCreated}</td>
    		</tr>		
    </c:forEach>     
</table>
<table>
	<tr>
		<td>
			<INPUT id="submit" name="submit" type="submit" value="Submit Items"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>