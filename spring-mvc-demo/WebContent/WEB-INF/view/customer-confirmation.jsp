<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title>Customer confirmation page</title>
</head>
<body>
	Customer confirmation: ${customer.firstName} ${customer.lastName}
	<br>
	Free passes: ${customer.freePasses}
	
	<br>
	Postal code: ${customer.postalCode}
</body>
	
</html>
