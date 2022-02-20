<%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
	<form method = "post" action = "jsp.calculator.jsp">
		<table border = "0" sytle ="margin-top:-50px;">
			<tr>
			<td>enter First Num</td><td><input type="text" name="t1"></td></tr><br>
			<td>enter Second Num</td><td><input type="text" name="t2"></td></tr><br>
			<tr><td></td><td>
			<select name = "option">
				<option value = "select">select</option>
				<option value = "+">+</option>
				<option value = "-">-</option>
				<option value = "*">*</option>
				<option value = "/">/</option>

		</select>
		</td></tr>
		<br>
		<tr><td></td><td> <input type = "submit" value = "Calculate"></td></tr>
	</table>
    </form>
    <%
           try 
        {
        	int a,b;
        	a=Integer.parseInt (request. getParameter("t1"));
        	b=Integer.parseInt(request. getParameter("t2"));
        	String c=request. getParameter("option");
        	if(c.equals("+"))
        	{
        		out.println(a+b);
        	}
        	else if 
        	 (c.equals("-"))
        	 {
        	 	out.println(a-b);
        	 }
        	 else if
        	 (c.equals("*"))
        	 {
        	 	out.println(a*b);
        	 }
        	 else if 
        	 (c.equals("/"))
        	 { 
        	 	out.println(a/b);
        	 }

        }

   catch(Exception ex) {}

   %>
</body>
</html>