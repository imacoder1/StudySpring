<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>

</head>

<body>
	<form:form action="processForm" modelAttribute="student">
		First name: <form:input path="firstName"/>
		<br><br>
		Last name: <form:input path="lastName"/>
		<br><br>
		Country: <form:select path="country">
			<form:options items="${student.countryOptions}"/>
		</form:select>
		<br><br>
		Favorite language:
		Java <form:radiobutton path="favoriteLanguage" value="Java"/>
		PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
		C# <form:radiobutton path="favoriteLanguage" value="C#"/>
		Python <form:radiobutton path="favoriteLanguage" value="Python"/>
		<br><br>
		Operating systems:
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Mac <form:checkbox path="operatingSystems" value="Mac"/>
		Windows OS <form:checkbox path="operatingSystems" value="Windows"/>
		<br><br>
		<input type="submit" value="Submit"/>
	</form:form>
</body>
</html>