<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*,com.jsp.tagdemo.Student" %>
<%
List<Student> data= new ArrayList<>();
data.add(new Student("Akanksha","Negi",false));
data.add(new Student("Rachna","Mishra",false));
pageContext.setAttribute("myStudent",data);
%>
<html>
<body>
<c:forEach var="tempStudent" items="${myStudent}">
${tempStudent.firstName} ${tempStudent.lastName}, ${tempStudent.goldCustomer};
</br>
</c:forEach>
</body>
</html>
