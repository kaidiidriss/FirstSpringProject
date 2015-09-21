<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendee page</title>
<style type="text/css">
  .error{
    color:#ff0000;
  }
  
  .errorblock{
    color:#000;
    background-color:#fff;
    border: 3px solid #ff0000;
    padding:8px;
    margin:16px
  }  
</style>
</head>
<body>

<a href="?lang=en">
  English
</a> | 
<a href="?lang=es">
  Spanish
</a> | 
<a href="?lang=fr">
  Français
</a>


<form:form commandName="attendee" >
   <form:errors path="*" cssClass="errorblock" element="div" />
    <table>
      <tr>
       <td>
	       <label for="textinput1"><spring:message code="attendee.name" />:</label>
	   </td>
	   <td>
		   <form:input path="name" cssErrorClass="error" />
		   <form:errors path="name" cssCless="error" />
	   </td>	   
	  </tr> 
	  
	  <tr>
	   <td>
	       <label for="textinput2"><spring:message code="attendee.email.address" /> :</label>
	   </td>
	   <td>
	       <form:input path="emailAddress" cssErrorClass="error" />
	       <form:errors path="emailAddress" cssCless="error" />
	   </td>
      </tr>
      
	  <tr>
	   <td>
	       <label for="textinput3"><spring:message code="attendee.phone" /> :</label>
	   </td>
	   <td>
	       <form:input path="phone" cssErrorClass="error" />
	       <form:errors path="phone" cssCless="error" />
	   </td>
      </tr>
            
    </table>
   <input type="submit" class="btn" value="Enter Event" />
</form:form>


</body>
</html>