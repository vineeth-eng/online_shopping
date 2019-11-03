<%@ include file="uheader.jsp"%>

<h1 align="center">Payment Gateway</h1>
<h4>Payment <%=request.getParameter("amt")%>/-</h4>
<br><br>
<form action="buy2.jsp" method="post" >

<table>
<tr>
<td>
<input required  type="radio" name="type" value="male">Credit Card
<br><br>
<input required  type="radio" name="type" value="female">Debit Card
<br><br>
<input required  type="radio" name="type" value="male">Net Banking
<br><br>
<input required  type="radio" name="type" value="male">Cash On Delivery
<br><br>
<input required  type="radio" name="type" value="male">Credit Card EMI
</td>
	<td><font size="4" color="">Select Yout Card:</font></td>
	<td><select name="card">
			<option value="Mastro Card">Mastro Card</option>
			<option value="VISA Card">VISA Card</option>
			</select>
	</td>

	<td><font size="4" color="">Select Your Bank</font></td>
	<td>
	<select name="bank">
			<option value="SBI">SBI</option>
			<option value="ICICI">ICICI</option>
			<option value="AXIS">AXIS</option>
			<option value="BOI">BOI</option>
	</select>
	
	
	<tr><td><td><td><input required  type="number" name="card" size="40" placeholder="Card number">
	<tr><td><td><td><input required  type="number" name="card" size="40" placeholder="CVV">
<input required  type="submit" value="Pay" onclick="">
	</td>
</tr>
</table>
</form>