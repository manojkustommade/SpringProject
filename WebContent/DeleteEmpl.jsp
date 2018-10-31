<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	  <j:choose>
   <j:when test="${sessionScope.user != null  and sessionScope.username == 'admin'}">
       <h3 style="align:center">Welcome to : <j:out value="${sessionScope.username}"></j:out> </h3> 
    
      <table border="2" align="center">
	      <tr>
		        <th>EMPCODE</th>
		        <th>EMPNAME</th>	        
		        <th>JOB</th>	   
		        <th>SALARY</th>
		        <th>DATE OF BIRTH</th>	        	      
	      </tr>
	      <j:forEach var="empls" items="${emp}">
	      		<tr>
	      			<td><j:out value="${empls.empcode}"></j:out></td>
	      			<td><j:out value="${empls.empname}"></j:out></td>
	      			<td><j:out value="${empls.job}"></j:out></td>
	      			<td><j:out value="${empls.salary}"></j:out></td>
	      			<td><j:out value="${empls.dateOfBirth}"></j:out></td>
	      			
	      			<td><a href="DeleteEmpl?code=${empls.empcode}">Delete</a></td>
	      		</tr>	
	      </j:forEach>
	</table>
	</j:when>
	<j:otherwise>
	   <j:out value="Not authorised"></j:out>
	</j:otherwise>
	</j:choose>
	<a herf="AdminHome.jsp">Back</a>
</body>
</html>